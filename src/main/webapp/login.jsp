<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0" />
    <title>Login|SURAKSHA</title>
    <link rel="stylesheet" type="text/css" href="GT.css" />
  </head>
  <body>
    <section>
      <div class="color"></div>
      <div class="color"></div>
      <div class="color"></div>
      <div class="box">
        <div class="square" style="--i: 0"></div>
        <div class="square" style="--i: 1"></div>
        <div class="square" style="--i: 2"></div>
        <div class="square" style="--i: 3"></div>
        <div class="square" style="--i: 4"></div>

        <div class="container">
          <div class="form">
            <form action="loginAction" method="post">
              <h2>Login</h2>
              <div class="inputBox">
                <input
                  type="text"
                  placeholder="Username"
                  name="uname"
                  autofocus
                /><br /><br />
              </div>
              <div class="inputBox">
                <input
                  type="password"
                  placeholder="Password"
                  name="upass"
                /><br /><br />
              </div>
              <div class="inputBox">
                <input type="submit" value="Login" />
              </div>

              <p class="forgot">
                Don't have an account ?<a href="signup.html">Sign Up</a>
              </p>
            </form>
          </div>
        </div>
      </div>
    </section>
  </body>
</html>
