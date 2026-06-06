import React, { useState, useRef, useEffect } from 'react';
import { Link } from 'react-router-dom';

const API = process.env.REACT_APP_API_URL || 'http://localhost:5000';

function Chat() {
  const [messages, setMessages] = useState([
    { role: 'ai', text: 'Hello! I\'m HealthWise AI. Ask me anything about health conditions, food recommendations, medicines, pregnancy guidance, or nutrition tips.' }
  ]);
  const [input, setInput] = useState('');
  const [loading, setLoading] = useState(false);
  const messagesEndRef = useRef(null);

  useEffect(() => {
    messagesEndRef.current?.scrollIntoView({ behavior: 'smooth' });
  }, [messages]);

  const sendMessage = async (e) => {
    e.preventDefault();
    if (!input.trim() || loading) return;

    const userMsg = input.trim();
    setInput('');
    setMessages(prev => [...prev, { role: 'user', text: userMsg }]);
    setLoading(true);

    try {
      const res = await fetch(`${API}/api/chat`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ message: userMsg })
      });

      const data = await res.json();

      if (data.error) {
        setMessages(prev => [...prev, { role: 'ai', text: 'Sorry, I couldn\'t process that. Please try again.' }]);
      } else {
        setMessages(prev => [...prev, { role: 'ai', text: data.response }]);
      }
    } catch (err) {
      setMessages(prev => [...prev, { role: 'ai', text: 'Connection error. Please check your internet and try again.' }]);
    }

    setLoading(false);
  };

  const formatMessage = (text) => {
    return text.split('\n').map((line, i) => {
      if (line.startsWith('**') && line.endsWith('**')) {
        return <h4 key={i} style={{ margin: '10px 0 5px', color: '#60a5fa' }}>{line.replace(/\*\*/g, '')}</h4>;
      }
      if (line.startsWith('* ') || line.startsWith('- ')) {
        return <li key={i} style={{ marginLeft: '20px', marginBottom: '4px' }}>{line.substring(2)}</li>;
      }
      if (line.trim() === '') return <br key={i} />;
      return <p key={i} style={{ margin: '4px 0' }}>{line.replace(/\*\*/g, '').replace(/\*/g, '')}</p>;
    });
  };

  return (
    <>
      <nav className="navbar">
        <Link to="/" className="logo">Health<span>Wise</span></Link>
        <Link to="/" className="back-link">Back to Home</Link>
      </nav>

      <div className="chat-container">
        <div className="chat-header">
          <h2>HealthWise AI Chat</h2>
          <p>Ask any health question - food, medicine, pregnancy, nutrition</p>
        </div>

        <div className="chat-messages">
          {messages.map((msg, idx) => (
            <div key={idx} className={`chat-bubble ${msg.role}`}>
              <div className="bubble-label">{msg.role === 'ai' ? 'HealthWise AI' : 'You'}</div>
              <div className="bubble-content">
                {msg.role === 'ai' ? formatMessage(msg.text) : msg.text}
              </div>
            </div>
          ))}
          {loading && (
            <div className="chat-bubble ai">
              <div className="bubble-label">HealthWise AI</div>
              <div className="bubble-content typing">
                <span></span><span></span><span></span>
              </div>
            </div>
          )}
          <div ref={messagesEndRef} />
        </div>

        <form className="chat-input-form" onSubmit={sendMessage}>
          <input
            type="text"
            value={input}
            onChange={(e) => setInput(e.target.value)}
            placeholder="Ask about any health condition, food, medicine..."
            disabled={loading}
          />
          <button type="submit" disabled={loading || !input.trim()}>
            Send
          </button>
        </form>

        <p className="chat-disclaimer">
          This AI provides general health information only. Always consult a qualified healthcare professional for medical advice.
        </p>
      </div>
    </>
  );
}

export default Chat;
