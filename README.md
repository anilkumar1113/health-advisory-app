# HealthWise - Health Advisory Application

A full-stack health advisory application that provides food recommendations, medicine guidance, and health tips for various medical conditions.

## Tech Stack

- **Frontend:** React 18 with React Router
- **Backend:** Python Flask REST API
- **Database:** Aurora MySQL
- **Deployment:** AWS (EC2 Auto Scaling, ALB, Route 53, CodePipeline)

## Project Structure

```
health-advisory-app/
├── frontend/          # React frontend application
│   ├── public/
│   └── src/
│       ├── pages/
│       │   ├── Home.js
│       │   ├── ConditionDetail.js
│       │   └── CategoryPage.js
│       ├── App.js
│       └── App.css
├── backend/           # Flask API server
│   ├── app.py
│   ├── requirements.txt
│   └── gunicorn.conf.py
└── database/          # SQL schema and seed data
    ├── schema.sql
    └── seed.sql
```

## API Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | /api/health | Health check |
| GET | /api/categories | List all categories |
| GET | /api/search?q=query | Search conditions |
| GET | /api/condition/:id | Get condition details |
| GET | /api/category/:id/conditions | List conditions by category |

## Running Locally

### Backend
```bash
cd backend
pip install -r requirements.txt
export DB_HOST=localhost DB_USER=root DB_PASSWORD=password DB_NAME=health_advisory
python app.py
```

### Frontend
```bash
cd frontend
npm install
REACT_APP_API_URL=http://localhost:5000 npm start
```

### Database
```bash
mysql -u root -p < database/schema.sql
mysql -u root -p < database/seed.sql
```

## Health Conditions Covered

- Viral Fever, Common Cold, Dengue, Typhoid
- Chronic Kidney Disease (CKD), Kidney Stones, UTI
- Type 2 Diabetes, Pre-Diabetes
- Hypertension, High Cholesterol
- Gastritis, Fatty Liver
- Asthma, COVID-19 Recovery
- Arthritis, Osteoporosis
- Iron Deficiency Anemia, Vitamin D Deficiency
