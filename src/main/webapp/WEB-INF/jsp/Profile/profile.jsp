<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>User-Profile-1</title>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
      integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
  </head>

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande",
        "Lucida Sans", Arial, sans-serif;
      color: #282c3f;
    }

    body {
      width: 100%;
      background: white;
      /* background: linear-gradient(to right, rgba(255, 0, 0, 0.4), rgba(248, 211, 171, 0.648)); */
      backdrop-filter: blur(10px);
    }

    .main {
      height: 100%;
      display: flex;
      justify-content: space-evenly;
      align-items: center;
      margin-top: 5%;
    }

    /*left div style start................................................*/

    .left {
      width: 30%;
      padding: 4%;
      height: 85vh;
      border-radius: 20px;
      box-shadow: 0px 2px 9px 1px rgba(0, 0, 0, 0.2);
      display: flex;
      flex-direction: column;
      justify-content: center;
    }

    .profile-img-div {
      width: 100%;
      height: 30%;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .profile-img-span {
      border: 10px solid powderblue;
      margin: auto;
      border-radius: 50%;
      width: 150px;
      height: 150px;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .profile-img {
      height: 130px;
      width: 130px;
      border-radius: 50%;
      text-align: center;
      margin: auto;
    }

    .user-name-div {
      width: 100%;
      text-align: center;
      padding: 5%;
    }

    .user-name {
      font-weight: 900;
      font-size: 1.8rem;
    }

    .user-name + span {
      font-size: 1rem;
      font-weight: 900;
    }

    .plan {
      width: 100%;
      padding: 1% 0;
    }

    .active {
      color: rgb(57, 224, 31);
      font-weight: 900;
      font-size: 1.3rem;
    }

    .deactive {
      color: rgb(255, 34, 34);
      font-weight: 700;
      font-size: 1.3rem;
    }

    .mobile-no-div {
      width: 100%;
      padding: 3% 1%;
      text-align: center;
    }

    .fa-mobile-screen {
      font-size: 1.5rem;
    }

    .fa-mobile-screen + label {
      font-size: 19px;
      font-weight: bold;
    }

    .whatsapp-no-div {
      width: 100%;
      padding: 3% 1%;
      text-align: center;
    }

    .fa-whatsapp {
      font-size: 1.5rem;
    }

    .fa-whatsapp + label {
      font-size: 19px;
      font-weight: bold;
    }

    .country-div {
      width: 100%;
      padding: 3% 2%;
      text-align: center;
    }

    .country-div h4 {
      font-weight: bold;
      font-size: 19px;
    }

    .nationality-div {
      width: 100%;
      padding: 3% 2%;
      text-align: center;
    }

    .nationality-div h4 {
      font-weight: bold;
      font-size: 19px;
    }

    /*left div style end................................................*/

    /*right div style start................................................*/
    .right {
      width: 65%;
      height: 85vh;
      padding: 3% 1%;
      box-shadow: 0px 2px 9px 1px rgba(0, 0, 0, 0.2);
      border-radius: 20px;
    }

    .left,
    .right {
      background-color: rgba(255, 255, 255, 0.25);
      backdrop-filter: blur(10px);
    }

    table {
      width: 100%;
      padding: 2%;
      border-collapse: separate;
      border-spacing: 15px;
    }

    tr:nth-child(odd) td:not(:nth-child(2)) {
      background-color: transparent;
    }

    tr:nth-child(even) td:not(:nth-child(2)) {
      background-color: transparent;
    }

    td:nth-child(odd) {
      border-radius: 50px;
      padding: 8px;
      box-shadow: 0px 0px 5px 1px rgba(0, 0, 0, 0.1);
    }

    tr td:nth-child(2) {
      padding: 20px;
      background-color: transparent;
    }

    td h3 {
      font-size: 1.2rem;
      font-weight: 900;
    }

    td > span {
      font-size: 1.2rem;
      font-weight: 900;
      display: flex;
      justify-content: center;
      align-items: center;
      gap: 0.5rem;
    }

    td span i:nth-child(1) {
      rotate: 180deg;
      font-size: 0.8rem;
    }

    td span i:nth-child(2) {
      font-size: 0.8rem;
    }

    td label {
      float: left;
      font-size: 1.2rem;
      font-weight: 900;
    }

    .change-pass-div {
      width: 100%;
      padding: 2.2%;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .change-pass-div button {
      width: 40%;
      font-size: 1.2rem;
      padding: 1.5% 0;
      border: none;
      border-radius: 20px;
      cursor: pointer;
      /* background-color: #78f776; */
      background-color: transparent;
      box-shadow: 0px 0px 5px 1px rgba(0, 0, 0, 0.1);
      position: relative;
      overflow: hidden;
    }

    #green {
      width: 100%;
      height: 100%;
      background-color: springgreen;
      position: absolute;
      top: 0;
      left: -100%;
      transition: left 0.8s ease;
    }

    .change-pass-div button:hover #green {
      left: 0;
    }

    .change-pass-div button h5 {
      font-weight: 100;
      position: relative;
      z-index: 99;
    }

    /*right div style end................................................*/

    @media (max-width: 868px) {
      .main {
        flex-direction: column;
        align-items: center;
      }

      .left {
        width: 80%;
        height: 30%;
        margin-top: 20px;
      }

      .right {
        width: 80%;
        height: 60%;
        margin-top: 20px;
        margin-bottom: 20px;
      }

      table {
        width: 100%;
        padding: 2%;
        border-collapse: separate;
        border-spacing: 15px;
        display: flex;
        justify-content: center;
        align-items: center;
      }

      td:nth-child(odd) {
        border-radius: 50px;
        padding: 5px;
        box-shadow: 0px 0px 5px 1px rgba(0, 0, 0, 0.1);
      }

      tr td:nth-child(2) {
        padding: 20px 0;
        background-color: transparent;
      }

      td h3 {
        font-size: 2vw;
        font-weight: 900;
      }

      td label {
        font-size: 2vw;
        font-weight: 900;
      }
    }
  </style>

  <body>
    <jsp:include page="../sidenav.jsp"></jsp:include>
    <section id="content">
      <jsp:include page="../header.jsp"></jsp:include>
      <main>
        <div class="main">
          <div class="left">
            <div class="profile-img-div">
              <span class="profile-img-span"
                ><img src="/nav-table/profile-img.jpg" class="profile-img"
              /></span>
            </div>

            <div class="user-name-div">
              <label class="user-name">ABC KUMAR</label>
              <span><label>(Male)</label></span>
              <div class="plan"><label class="active">Active</label></div>
            </div>

            <div class="user-contact-div">
              <div class="mobile-no-div">
                <i
                  class="fa-solid fa-mobile-screen fa-beat"
                  style="color: #b197fc"
                ></i>
                : <label>74586234868</label>
              </div>

              <div class="whatsapp-no-div">
                <i
                  class="fa-brands fa-whatsapp fa-shake"
                  style="color: #2cf028"
                ></i>
                : <label>74586234868</label>
              </div>

              <div class="country-div">
                <h4>Counrty : <label>India</label></h4>
              </div>

              <div class="nationality-div">
                <h4>Nationality : <label>Indian</label></h4>
              </div>
            </div>
          </div>

          <div class="right">
            <table>
              <tbody>
                <tr>
                  <td>
                    <h3>Gender</h3>
                  </td>
                  <td>
                    <span>
                      <i class="fa-solid fa-arrow-right"></i>
                      <i class="fa-solid fa-arrow-right"></i>
                    </span>
                  </td>
                  <td><label>Male</label></td>
                </tr>

                <tr>
                  <td>
                    <h3>Birth Date</h3>
                  </td>
                  <td>
                    <span>
                      <i class="fa-solid fa-arrow-right"></i>
                      <i class="fa-solid fa-arrow-right"></i>
                    </span>
                  </td>
                  <td><label>10/10/1999</label></td>
                </tr>

                <tr>
                  <td>
                    <h3>Current Japanese skill</h3>
                  </td>
                  <td>
                    <span>
                      <i class="fa-solid fa-arrow-right"></i>
                      <i class="fa-solid fa-arrow-right"></i>
                    </span>
                  </td>
                  <td><label>Beginner</label></td>
                </tr>

                <tr>
                  <td>
                    <h3>Preferable Course</h3>
                  </td>
                  <td>
                    <span>
                      <i class="fa-solid fa-arrow-right"></i>
                      <i class="fa-solid fa-arrow-right"></i>
                    </span>
                  </td>
                  <td><label>Beginner</label></td>
                </tr>

                <tr>
                  <td>
                    <h3>Email ID</h3>
                  </td>
                  <td>
                    <span>
                      <i class="fa-solid fa-arrow-right"></i>
                      <i class="fa-solid fa-arrow-right"></i>
                    </span>
                  </td>
                  <td><label>ABCKumar@123.com</label></td>
                </tr>

                <tr>
                  <td>
                    <h3>Password</h3>
                  </td>
                  <td>
                    <span>
                      <i class="fa-solid fa-arrow-right"></i>
                      <i class="fa-solid fa-arrow-right"></i>
                    </span>
                  </td>
                  <td><label>***********</label></td>
                </tr>
              </tbody>
            </table>

            <div class="change-pass-div">
              <button class="change-pass">
                <a href="changepassword">
                  <h5>Change Password</h5>
                </a>
                <div id="green"></div>
              </button>
            </div>
          </div>
        </div>
      </main>
    </section>
  </body>
  <script src="js/adminscript.js"></script>
</html>
