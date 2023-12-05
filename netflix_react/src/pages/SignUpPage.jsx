import React, { useState, useEffect } from 'react';
import './sign-up-page.css';
import { Link } from 'react-router-dom';

function SignUpPage() {
  return (
    <div id="sign-up-page">
      <img id="logo" src="/Netflix_Logo_PMS.png" alt="" />
      <div id="sign-up-form">
        <h1>Sign Up</h1>
        <p>Watch anywhere. Cancel anytime.</p>
        <form>
          <input type="text" placeholder="Username" />
          <input type="password" placeholder="Password" />
          <input type="text" placeholder="Username" />
          <input type="password" placeholder="Password" />
          <Link to="/"><button type="submit">Sign Up</button></Link>
        </form>
      </div>
    </div>
  );
}

export default SignUpPage;