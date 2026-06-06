from flask import Flask, jsonify, request
from flask_cors import CORS
import mysql.connector
import boto3
import json
import os
import requests as http_requests

app = Flask(__name__)
CORS(app)

def get_secret():
    secret_name = os.environ.get('DB_SECRET_NAME', 'healthwise/db-credentials')
    region = os.environ.get('AWS_REGION', 'us-east-1')

    client = boto3.client('secretsmanager', region_name=region)
    resp = client.get_secret_value(SecretId=secret_name)
    return json.loads(resp['SecretString'])

def get_db():
    secret = get_secret()
    return mysql.connector.connect(
        host=secret.get('host'),
        user=secret.get('username'),
        password=secret.get('password'),
        database=os.environ.get('DB_NAME', 'health_advisory'),
        port=int(secret.get('port', 3306))
    )


@app.route('/api/health', methods=['GET'])
def health_check():
    return jsonify({"status": "healthy"})


@app.route('/api/categories', methods=['GET'])
def get_categories():
    db = get_db()
    cursor = db.cursor(dictionary=True)
    cursor.execute("SELECT * FROM categories ORDER BY name")
    categories = cursor.fetchall()
    cursor.close()
    db.close()
    return jsonify(categories)


@app.route('/api/search', methods=['GET'])
def search():
    query = request.args.get('q', '').strip()
    if not query:
        return jsonify([])

    db = get_db()
    cursor = db.cursor(dictionary=True)
    cursor.execute("""
        SELECT c.id, c.name, c.description, c.icon, cat.name as category_name
        FROM conditions c
        JOIN categories cat ON c.category_id = cat.id
        WHERE c.name LIKE %s OR c.description LIKE %s OR c.keywords LIKE %s
        ORDER BY c.name
    """, (f'%{query}%', f'%{query}%', f'%{query}%'))
    results = cursor.fetchall()
    cursor.close()
    db.close()
    return jsonify(results)


@app.route('/api/condition/<int:condition_id>', methods=['GET'])
def get_condition(condition_id):
    db = get_db()
    cursor = db.cursor(dictionary=True)

    cursor.execute("""
        SELECT c.*, cat.name as category_name
        FROM conditions c
        JOIN categories cat ON c.category_id = cat.id
        WHERE c.id = %s
    """, (condition_id,))
    condition = cursor.fetchone()

    if not condition:
        cursor.close()
        db.close()
        return jsonify({"error": "Condition not found"}), 404

    cursor.execute("SELECT * FROM foods WHERE condition_id = %s ORDER BY food_type, name", (condition_id,))
    foods = cursor.fetchall()

    cursor.execute("SELECT * FROM medicines WHERE condition_id = %s ORDER BY name", (condition_id,))
    medicines = cursor.fetchall()

    cursor.execute("SELECT * FROM tips WHERE condition_id = %s ORDER BY priority", (condition_id,))
    tips = cursor.fetchall()

    cursor.close()
    db.close()

    condition['foods_to_eat'] = [f for f in foods if f['food_type'] == 'eat']
    condition['foods_to_avoid'] = [f for f in foods if f['food_type'] == 'avoid']
    condition['medicines'] = medicines
    condition['tips'] = tips

    return jsonify(condition)


@app.route('/api/category/<int:category_id>/conditions', methods=['GET'])
def get_conditions_by_category(category_id):
    db = get_db()
    cursor = db.cursor(dictionary=True)
    cursor.execute("""
        SELECT c.id, c.name, c.description, c.icon
        FROM conditions c
        WHERE c.category_id = %s
        ORDER BY c.name
    """, (category_id,))
    conditions = cursor.fetchall()
    cursor.close()
    db.close()
    return jsonify(conditions)


GEMINI_API_KEY = os.environ.get('GEMINI_API_KEY', '')
GEMINI_URL = 'https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent'

@app.route('/api/chat', methods=['POST'])
def chat():
    data = request.get_json()
    user_message = data.get('message', '').strip()

    if not user_message:
        return jsonify({"error": "Message is required"}), 400

    system_prompt = """You are HealthWise AI, a helpful health advisory assistant.
    Provide accurate, evidence-based health information about:
    - Food recommendations for health conditions
    - Medicine guidance (always add disclaimer to consult doctor)
    - Health tips and lifestyle advice
    - Pregnancy week-by-week guidance
    - Nutrition and diet advice

    Rules:
    - Always recommend consulting a qualified doctor for serious conditions
    - Never diagnose conditions - only provide general information
    - Keep responses concise and well-formatted with bullet points
    - If asked about emergencies, tell them to call emergency services immediately
    - Respond in the same language the user asks in"""

    payload = {
        "contents": [
            {
                "role": "user",
                "parts": [{"text": system_prompt + "\n\nUser question: " + user_message}]
            }
        ],
        "generationConfig": {
            "temperature": 0.7,
            "maxOutputTokens": 1024
        }
    }

    try:
        resp = http_requests.post(
            f"{GEMINI_URL}?key={GEMINI_API_KEY}",
            json=payload,
            headers={"Content-Type": "application/json"},
            timeout=30
        )

        if resp.status_code != 200:
            return jsonify({"error": "AI service unavailable", "details": resp.text}), 500

        result = resp.json()
        ai_response = result['candidates'][0]['content']['parts'][0]['text']

        return jsonify({"response": ai_response})

    except Exception as e:
        return jsonify({"error": f"Chat failed: {str(e)}"}), 500


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=False)
