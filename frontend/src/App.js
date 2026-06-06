import React from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Home from './pages/Home';
import ConditionDetail from './pages/ConditionDetail';
import CategoryPage from './pages/CategoryPage';
import Chat from './pages/Chat';
import './App.css';

function App() {
  return (
    <Router>
      <div className="app">
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/condition/:id" element={<ConditionDetail />} />
          <Route path="/category/:id" element={<CategoryPage />} />
          <Route path="/chat" element={<Chat />} />
        </Routes>
      </div>
    </Router>
  );
}

export default App;
