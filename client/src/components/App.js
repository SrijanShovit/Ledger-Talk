import logo from '../logo.svg';
import './App.css';
import Wallet from "./Wallet"

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code> and save to reload.
        </p>
        <a>
         Learn blockchain with Stacks DAO 
        </a>
        <div>
          <Wallet />      
        </div>
      </header>
    </div>
  );
}

export default App;
