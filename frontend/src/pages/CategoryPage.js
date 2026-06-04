import React, { useState, useEffect } from 'react';
import { Link, useParams } from 'react-router-dom';

const API = process.env.REACT_APP_API_URL || 'http://localhost:5000';

function CategoryPage() {
  const { id } = useParams();
  const [conditions, setConditions] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    fetch(`${API}/api/category/${id}/conditions`)
      .then(res => res.json())
      .then(data => {
        setConditions(data);
        setLoading(false);
      })
      .catch(err => {
        console.error(err);
        setLoading(false);
      });
  }, [id]);

  if (loading) {
    return (
      <div className="loading">
        <div className="spinner"></div>
        <p>Loading conditions...</p>
      </div>
    );
  }

  return (
    <>
      <nav className="navbar">
        <Link to="/" className="logo">Health<span>Wise</span></Link>
      </nav>

      <div className="category-page">
        <Link to="/" className="back-btn">← Back to Home</Link>

        <h1 style={{ fontSize: '32px', fontWeight: 700, marginBottom: '30px' }}>
          Conditions
        </h1>

        <div className="conditions-list">
          {conditions.map(cond => (
            <Link to={`/condition/${cond.id}`} className="condition-card" key={cond.id}>
              <div className="icon">{cond.icon}</div>
              <div>
                <h3>{cond.name}</h3>
                <p>{cond.description?.substring(0, 120)}...</p>
              </div>
            </Link>
          ))}
          {conditions.length === 0 && (
            <p style={{color: '#94a3b8', textAlign: 'center', padding: '40px'}}>No conditions found in this category.</p>
          )}
        </div>
      </div>

      <footer className="footer">
        <p>HealthWise — Trusted Health Information at Your Fingertips</p>
        <p className="disclaimer">⚠️ This is for informational purposes only. Always consult a qualified healthcare professional for medical advice.</p>
      </footer>
    </>
  );
}

export default CategoryPage;
