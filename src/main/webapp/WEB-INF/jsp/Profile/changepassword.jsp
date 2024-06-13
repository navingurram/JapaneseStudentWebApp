<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Manage Students</title>
    <link rel="stylesheet" href="css/admin.css" />
    <link rel="stylesheet" href="css/admin.css" />
    <script
      src="https://kit.fontawesome.com/ae73087723.js"
      crossorigin="anonymous"
    ></script>
  </head>
  <style>
    main {
      display: flex;
      justify-content: center;
      align-items: center;
    }
    .container {
      max-width: 450px;
      background: #f8f9fd;
      background: linear-gradient(
        0deg,
        rgb(255, 255, 255) 0%,
        rgb(244, 247, 251) 100%
      );
      border-radius: 40px;
      padding: 25px 35px;
      box-shadow: 0.5px 0.5px 3px 1px;
      margin: 20px;
    }

    .heading {
      text-align: center;
      font-weight: 600;
      font-size: 30px;
      color: black;
    }

    .form {
      margin-top: 20px;
    }

    .form .input {
      width: 100%;
      background: white;
      color: black;
      border: none;
      padding: 15px 20px;
      border-radius: 20px;
      margin-top: 15px;
      box-shadow: #cff0ff 0px 10px 10px -5px;
      border-inline: 2px solid transparent;
    }

    /* .form .input::-moz-placeholder {
	color: rgb(170, 170, 170);
}

.form .input::placeholder {
	color: rgb(170, 170, 170);
} */

    .form .input:focus {
      outline: none;
      border-inline: 2px solid #12b1d1;
    }

    .form .forgot-password {
      display: block;
      margin-top: 10px;
      margin-left: 10px;
    }

    .form .forgot-password a {
      font-size: 11px;
      color: #0099ff;
      text-decoration: none;
    }

    .form .login-button {
      display: block;
      font-weight: bold;
      background: linear-gradient(
        45deg,
        rgb(16, 137, 211) 0%,
        rgb(18, 177, 209) 100%
      );
      color: white;
      padding-right: 20px;
      padding-left: 20px;
      padding-top: 10px;
      padding-bottom: 10px;
      margin: 20px auto;
      border-radius: 10px;
      box-shadow: rgba(133, 189, 215, 0.8784313725) 0px 20px 10px -15px;
      border: none;
      transition: all 0.2s ease-in-out;
    }

    .form .login-button:hover {
      transform: scale(1.03);
      box-shadow: rgba(133, 189, 215, 0.8784313725) 0px 23px 10px -20px;
    }

    .form .login-button:active {
      transform: scale(0.95);
      box-shadow: rgba(133, 189, 215, 0.8784313725) 0px 15px 10px -10px;
    }

    .social-account-container {
      margin-top: 25px;
    }

    .social-account-container .title {
      display: block;
      text-align: center;
      font-size: 10px;
      color: rgb(170, 170, 170);
    }

    .social-account-container .social-accounts {
      width: 100%;
      display: flex;
      justify-content: center;
      gap: 15px;
      margin-top: 5px;
    }

    .social-account-container .social-accounts .social-button {
      background: linear-gradient(
        45deg,
        rgb(0, 0, 0) 0%,
        rgb(112, 112, 112) 100%
      );
      border: 5px solid white;
      padding: 5px;
      border-radius: 50%;
      width: 40px;
      aspect-ratio: 1;
      display: grid;
      place-content: center;
      box-shadow: rgba(133, 189, 215, 0.8784313725) 0px 12px 10px -8px;
      transition: all 0.2s ease-in-out;
    }

    .social-account-container .social-accounts .social-button .svg {
      fill: white;
      margin: auto;
    }

    .social-account-container .social-accounts .social-button:hover {
      transform: scale(1.2);
    }

    .social-account-container .social-accounts .social-button:active {
      transform: scale(0.9);
    }

    .agreement {
      display: block;
      text-align: center;
      margin-top: 15px;
    }

    .agreement a {
      text-decoration: none;
      color: #0099ff;
      font-size: 9px;
    }
  </style>

  <body>
    <jsp:include page="../sidenav.jsp"></jsp:include>
    <section id="content">
      <jsp:include page="../header.jsp"></jsp:include>
      <main>
        <div class="container">
          <div class="heading">CHANGE PASSWORD</div>
          <form action="" class="form">
            <div>
              <label>Enter Current Password</label>
              <input
                required=""
                class="input"
                type="password"
                name="password"
                placeholder="Current Password"
              />
            </div>
            <div style="margin-top: 20px">
              <label>Enter New Password</label>
              <input
                required=""
                class="input"
                type="password"
                name="password"
                placeholder="Password"
              />
            </div>

            <div style="margin-top: 20px">
              <label>Confirm New Password</label>
              <input
                required=""
                class="input"
                type="password"
                name="password"
                placeholder="Password"
              />
            </div>

            <button class="login-button">Update</button>
          </form>
        </div>
      </main>
    </section>
    <script src="js/adminscript.js"></script>
  </body>
</html>
