from flask import Flask, jsonify, request
from flask_cors import CORS
import mysql.connector
import boto3
import json
import os

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


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=False)
