import React, { useState, useEffect } from 'react';
import { Link, useParams } from 'react-router-dom';

const API = process.env.REACT_APP_API_URL || 'http://localhost:5000';

function ConditionDetail() {
  const { id } = useParams();
  const [condition, setCondition] = useState(null);
  const [activeTab, setActiveTab] = useState('eat');
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    fetch(`${API}/api/condition/${id}`)
      .then(res => res.json())
      .then(data => {
        setCondition(data);
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
        <p>Loading health information...</p>
      </div>
    );
  }

  if (!condition) {
    return <div className="loading"><p>Condition not found.</p></div>;
  }

  return (
    <>
      <nav className="navbar">
        <Link to="/" className="logo">Health<span>Wise</span></Link>
      </nav>

      <div className="detail-page">
        <Link to="/" className="back-btn">← Back to Home</Link>

        <div className="detail-header">
          <div className="icon">{condition.icon}</div>
          <h1>{condition.name}</h1>
          <p>{condition.description}</p>
          <span className={`severity-badge severity-${condition.severity}`}>
            {condition.severity} condition
          </span>
        </div>

        <div className="tabs">
          <div className={`tab ${activeTab === 'eat' ? 'active' : ''}`} onClick={() => setActiveTab('eat')}>
            🥗 Foods to Eat
          </div>
          <div className={`tab ${activeTab === 'avoid' ? 'active' : ''}`} onClick={() => setActiveTab('avoid')}>
            🚫 Foods to Avoid
          </div>
          <div className={`tab ${activeTab === 'medicine' ? 'active' : ''}`} onClick={() => setActiveTab('medicine')}>
            💊 Medicines
          </div>
          <div className={`tab ${activeTab === 'tips' ? 'active' : ''}`} onClick={() => setActiveTab('tips')}>
            💡 Health Tips
          </div>
        </div>

        <div className="content-section">
          {activeTab === 'eat' && (
            <>
              {condition.foods_to_eat?.map(food => (
                <div key={food.id} className="food-card eat">
                  <h4>{food.name}</h4>
                  <p>{food.description}</p>
                  {food.benefit && <p className="benefit">✓ {food.benefit}</p>}
                </div>
              ))}
              {(!condition.foods_to_eat || condition.foods_to_eat.length === 0) && (
                <p style={{color: '#94a3b8', textAlign: 'center', padding: '40px'}}>No food recommendations available yet.</p>
              )}
            </>
          )}

          {activeTab === 'avoid' && (
            <>
              {condition.foods_to_avoid?.map(food => (
                <div key={food.id} className="food-card avoid">
                  <h4>{food.name}</h4>
                  <p>{food.description}</p>
                  {food.benefit && <p className="benefit" style={{color: '#fca5a5'}}>⚠ {food.benefit}</p>}
                </div>
              ))}
              {(!condition.foods_to_avoid || condition.foods_to_avoid.length === 0) && (
                <p style={{color: '#94a3b8', textAlign: 'center', padding: '40px'}}>No food restrictions listed yet.</p>
              )}
            </>
          )}

          {activeTab === 'medicine' && (
            <>
              {condition.medicines?.map(med => (
                <div key={med.id} className="medicine-card">
                  <span className="type-badge">{med.medicine_type}</span>
                  <h4>{med.name}</h4>
                  <p>{med.description}</p>
                  {med.dosage && <p className="dosage">📋 Dosage: {med.dosage}</p>}
                  {med.disclaimer && <p className="disclaimer">⚠️ {med.disclaimer}</p>}
                </div>
              ))}
              {(!condition.medicines || condition.medicines.length === 0) && (
                <p style={{color: '#94a3b8', textAlign: 'center', padding: '40px'}}>No medicine information available yet.</p>
              )}
            </>
          )}

          {activeTab === 'tips' && (
            <>
              {condition.tips?.map((tip, index) => (
                <div key={tip.id} className="tip-card">
                  <div className="tip-number">{index + 1}</div>
                  <p>{tip.tip}</p>
                </div>
              ))}
              {(!condition.tips || condition.tips.length === 0) && (
                <p style={{color: '#94a3b8', textAlign: 'center', padding: '40px'}}>No health tips available yet.</p>
              )}
            </>
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

export default ConditionDetail;
