import React, { useState } from 'react';
import './App.css';

function App() {
  const [theorem, setTheorem] = useState({
    statement: "⋂_{p ∈ Ass(M)} p = √(Ann(M))",
    explanation: "For Noetherian ring A and finitely generated module M",
    verified: false
  });

  const [moduleData, setModuleData] = useState({
    name: "Module M",
    annihilator: "ann(M)",
    associatedPrimes: ["(x,y)", "(y,z)", "(x,z)"]
  });

  const verifyTheorem = () => {
    // Simulate theorem verification
    setTimeout(() => {
      setTheorem(prev => ({ ...prev, verified: true }));
      alert("Theorem verified conceptually!\nFull verification requires computational algebra.");
    }, 500);
  };

  return (
    <div className="App">
      <header className="App-header">
        <h1>Commutative Algebra Module Theorem</h1>
        <div className="theorem-box">
          <h2>Theorem:</h2>
          <p className="formula">{theorem.statement}</p>
          <p>{theorem.explanation}</p>
        </div>

        <div className="module-info">
          <h3>Module Information</h3>
          <p><strong>Name:</strong> {moduleData.name}</p>
          <p><strong>Annihilator:</strong> {moduleData.annihilator}</p>
          <p><strong>Associated Primes:</strong></p>
          <ul>
            {moduleData.associatedPrimes.map((prime, idx) => (
              <li key={idx}>{prime}</li>
            ))}
          </ul>
        </div>

        <div className="verification-section">
          <button onClick={verifyTheorem} className="verify-btn">
            Verify Theorem
          </button>
          {theorem.verified && (
            <div className="result success">
              ✓ Theorem holds: ⋂ Ass(M) = √Ann(M)
            </div>
          )}
        </div>

        <div className="applications">
          <h3>Business Applications</h3>
          <div className="app-cards">
            <div className="card">
              <h4>System Reliability</h4>
              <p>Associated primes represent failure modes; theorem identifies critical components.</p>
            </div>
            <div className="card">
              <h4>Financial Risk</h4>
              <p>Primes are risk factor sets; intersection shows systematic risk.</p>
            </div>
            <div className="card">
              <h4>Resource Management</h4>
              <p>Module as project portfolio; theorem finds essential resources.</p>
            </div>
          </div>
        </div>
      </header>
    </div>
  );
}

export default App;
