import React from 'react';
import './login-page.css';
import { Link } from 'react-router-dom';
function LoginPage() {
  return (
    <div id="login-page">
      <img id="logo" src="/Netflix_Logo_PMS.png" alt="" />
      <div id="login-form">
        <h1>Sign in</h1>
        <form>
          <input type="text" placeholder="Username" />
          <input type="password" placeholder="Password" />
          <Link to="/home"><button type="submit">Sign in</button></Link>
          <p>New to Netflix? <Link to="/signup">Sign up now.</Link></p>
        </form>
      </div>
    </div>
  );
}

export default LoginPage;