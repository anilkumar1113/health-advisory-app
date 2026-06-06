import React, { useState, useEffect } from 'react';
import { Link, useNavigate, useLocation } from 'react-router-dom';

const API = process.env.REACT_APP_API_URL || 'http://localhost:5000';

function Home() {
  const [categories, setCategories] = useState([]);
  const [searchQuery, setSearchQuery] = useState('');
  const [searchResults, setSearchResults] = useState([]);
  const [showResults, setShowResults] = useState(false);
  const navigate = useNavigate();

  useEffect(() => {
    fetch(`${API}/api/categories`)
      .then(res => res.json())
      .then(data => setCategories(data))
      .catch(err => console.error(err));
  }, []);

  useEffect(() => {
    if (searchQuery.length < 2) {
      setSearchResults([]);
      setShowResults(false);
      return;
    }

    const timer = setTimeout(() => {
      fetch(`${API}/api/search?q=${encodeURIComponent(searchQuery)}`)
        .then(res => res.json())
        .then(data => {
          setSearchResults(data);
          setShowResults(true);
        })
        .catch(err => console.error(err));
    }, 300);

    return () => clearTimeout(timer);
  }, [searchQuery]);

  const handleSearch = (e) => {
    e.preventDefault();
    if (searchQuery.length >= 2) {
      setShowResults(true);
    }
  };

  return (
    <>
      <nav className="navbar">
        <Link to="/" className="logo">Health<span>Wise</span></Link>
      </nav>

      <section className="hero">
        <h1>
          Your <span className="gradient-text">Health Advisory</span>
          <br />Companion
        </h1>
        <p>
          Search any health condition to get food recommendations, medicine guidance, and expert health tips.
        </p>

        <div className="search-container">
          <form onSubmit={handleSearch}>
            <div className="search-box">
              <input
                type="text"
                placeholder="Search conditions... (e.g., fever, kidney, diabetes)"
                value={searchQuery}
                onChange={(e) => setSearchQuery(e.target.value)}
                onFocus={() => searchResults.length > 0 && setShowResults(true)}
                onBlur={() => setTimeout(() => setShowResults(false), 200)}
              />
              <button type="submit" className="search-btn">Search</button>
            </div>
          </form>

          {showResults && searchResults.length > 0 && (
            <div className="search-results">
              {searchResults.map(item => (
                <div
                  key={item.id}
                  className="search-result-item"
                  onClick={() => navigate(`/condition/${item.id}`)}
                >
                  <h4>{item.icon} {item.name}</h4>
                  <p>{item.category_name} — {item.description?.substring(0, 100)}...</p>
                </div>
              ))}
            </div>
          )}
        </div>
      </section>

      <section className="categories-section">
        <h2 className="section-title">Browse by Category</h2>
        <div className="categories-grid">
          {categories.map(cat => (
            <Link to={`/category/${cat.id}`} className="category-card" key={cat.id}>
              <div className="icon">{cat.icon}</div>
              <h3>{cat.name}</h3>
              <p>{cat.description}</p>
            </Link>
          ))}
        </div>
      </section>

      <Link to="/chat" className="chat-fab">
        💬 Ask AI
      </Link>

      <footer className="footer">
        <p>HealthWise — Trusted Health Information at Your Fingertips</p>
        <p className="disclaimer">⚠️ This is for informational purposes only. Always consult a qualified healthcare professional for medical advice.</p>
      </footer>
    </>
  );
}

export default Home;
