!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>RDNS Tours</title>
    <link rel="icon" href=" " />
    <!-- rahesh ithula icon add panniru la -->
    <style>
      body {
        margin: 0;
        padding: 0;
        background-image: url("https://i.pinimg.com/736x/2e/3d/68/2e3d6845011de0d24c13dd1e1028a2ff.jpg");
        background-size: cover;
        font-family: "Trebuchet MS", sans-serif; 
      }
      .login-container {
        width: 300px;
        padding: 30px;
        background-color: rgba(255, 255, 255, 0.9);
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        border-radius: 10px;
        backdrop-filter: blur(10px);
        mix-blend-mode: color-burn;
      }
      .login-container h2 {
        text-align: center;
        margin-bottom: 20px;
      }
      .login-container input[type="text"],
      .login-container input[type="password"] {
        width: 275px;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
      }
      .login-container input[type="submit"] {
        width: 75%;
        padding: 10px;
        background-color: #007bff;
        color: white;
        border: none;
        mix-blend-mode: normal !important;
        border-radius: 20px;
        cursor: pointer;
      }
      .welcome-message {
        text-align: center;
        color: green;
        font-size: 22px;
        margin-top: 30px;
      }
    </style>
  </head>
  <body>
    <div class="login-container" id="loginContainer">
      <h1 style="text-align: center">Login</h1>
      <hr />
      <form id="loginForm" onsubmit="loginUser(event)">
        <h3>Username</h3>
        <input type="text" id="username" placeholder="Username" required />
        <h3>Password</h3>
        <input type="password" placeholder="Password" required />
        <p>I didn't have account <a href="signin.html">Create an account</a></p>
        <br /><br />
        <center>
          <input type="submit" value="Login" />
        </center>
      </form>
    </div>

    <div
      class="welcome-message"
      id="welcomeMessage"
      style="display: none"
    ></div>

    <script>
      document
        .getElementById("loginForm")
        .addEventListener("submit", function (event) {
          event.preventDefault();
          const username = document.getElementById("username").value;
          window.location.href =
            "homepage.html?user=" + encodeURIComponent(username);
        });
      function loginUser(event) {
        event.preventDefault();

        const inputUsername = document.getElementById("username").value;
        const inputPassword = document.getElementById("password").value;

        const savedUsername = localStorage.getItem("savedUsername");
        const savedPassword = localStorage.getItem("savedPassword");

        if (
          inputUsername === savedUsername &&
          inputPassword === savedPassword
        ) {
          alert("✅ Login Successful!");
          window.location.href = "dashboard.html"; // Redirect to home page
        } else {
          alert("❌ Incorrect Username or Password");
        }
      }
    </script>
  </body>
</html>