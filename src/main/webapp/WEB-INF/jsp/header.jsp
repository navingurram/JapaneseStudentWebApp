<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Insert title here</title>
  </head>
  <style>
    body {
      width: 100%;
      height: 100%;
      margin: 0;
      font-family: Arial, sans-serif;
    }

    .bell-container {
      margin: 0 6%;
    }

    nav h4 {
      padding: 31px 25px;
      position: relative;
    }

    .fa-bell {
      font-size: 25px;
      display: flex;
      position: relative;
      cursor: pointer;
    }

    .count {
      position: absolute;
      top: -25%;
      left: 55%;
      background-color: red;
      white-space: nowrap;
      text-align: center;
      line-height: 18px;
      padding: 0 5px;
      height: 18px;
      border-radius: 50%;
      font-size: 12px;
      color: white;
    }

    .modal {
      /* display: none; */
      position: absolute;
      top: calc(60px);
      left: -70px;
      transform: translateX(-50%);
      min-width: 300px;
      max-width: 450px;
      background-color: white;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
      z-index: 100;
      box-sizing: border-box;
      max-height: calc(100vh - 100px);
      cursor: pointer;
      border-radius: 15px;
    }

    .msg-main-div::-webkit-scrollbar {
      width: 10px;
      background: white;
    }

    .msg-main-div::-webkit-scrollbar-thumb {
      background: white;
      border-radius: 6px;
    }

    .msg-main-div:hover::-webkit-scrollbar-thumb {
      background: rgba(195, 193, 193, 0.712);
    }

    .msg-main-div::-webkit-scrollbar-track {
      background: white;
    }

    .msg-main-div:hover::-webkit-scrollbar-track {
      background-color: rgba(113, 112, 112, 0.562);
    }

    .modal-nav {
      width: 100%;
      padding: 4%;
      font-size: 0.9rem;
      text-align: center;
      z-index: 1;
      display: flex;
      justify-content: space-between;
      align-items: center;
      border-bottom: 1px solid #565656;
    }

    .modal-nav p,
    .modal-nav span {
      font-weight: 600;
      font-size: 15px;
    }

    .modal-nav span {
      background-color: #55d0ff;
      padding: 1.5% 3%;
      border-radius: 5px;
    }

    .msg-main-div {
      max-height: calc(70vh - 200px);
      overflow-y: auto;
    }

    .msg-inner-div {
      width: 100%;
      display: flex;
      justify-content: space-around;
      padding: 3% 0;
      border-bottom: 1px solid #585858;
      background: white;
      color: black;
    }

    .msg-inner-div:hover {
      background-color: #55d0ff;
      color: black;
    }

    .profile-div {
      width: 20%;
      text-align: center;
    }

    .profile-div img {
      height: 50px;
      border-radius: 50%;
    }

    .msg-div {
      width: 60%;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
    }

    .user-name {
      width: 100%;
      padding: 1% 0;
    }

    .user-name h3 {
      font-weight: 700;
      font-size: 12px;
      text-align: left;
      color: black;
    }

    .user-msg {
      width: 100%;
      font-weight: 500;
      font-size: 12px;
      text-align: left;
      padding: 1% 0;
      color: black;
    }

    .time-div {
      width: 20%;
      padding: 2% 0;
    }

    .time-div h3 {
      font-weight: 500;
      font-size: 10px;
      text-align: center;
      color: black;
    }

    .view-more-div {
      border-top: 1px solid #878787;
      width: 100%;
      padding: 4%;
    }

    .view-more-inner-div {
      background-color: #55d0ff;
      width: 80%;
      margin: auto;
      border-radius: 5px;
      padding: 2%;
      text-align: center;
    }

    .view-more-inner-div h3 {
      text-align: center;
      font-weight: 600;
      font-size: 15px;
    }
  </style>
  <body>
    <nav class="navcont">
      <i class="fa-solid fa-bars toggle-sidebar"></i>
      <div class="subnav">
        <ul>
          <li>
            <a href="/"
              ><img
                src="uploadfiles/logo.png"
                style="width: 300px; margin-top: 10px"
            /></a>
          </li>
        </ul>
      </div>

      <div class="message">
        <div class="nav-link">
          <h4 class="bell-container">
            <i class="fa-solid fa-bell" style="color: #1a193b">
              <span class="count">8</span>
            </i>

            <div class="modal">
              <div class="modal-nav">
                <p>Notifications</p>
                <span>8 New</span>
              </div>

              <div class="msg-main-div">
                <div class="msg-inner-div">
                  <div class="profile-div">
                    <img src="profile-img.jpg" />
                  </div>

                  <div class="msg-div">
                    <div class="user-name">
                      <h3>ABC KUMAR</h3>
                    </div>

                    <div class="user-msg">Lorem ipsum dolor Lorem gdg</div>
                  </div>

                  <div class="time-div">
                    <h3>20 min ago</h3>
                  </div>
                </div>

                <div class="msg-inner-div">
                  <div class="profile-div">
                    <img src="profile-img.jpg" />
                  </div>

                  <div class="msg-div">
                    <div class="user-name">
                      <h3>ABC KUMAR</h3>
                    </div>

                    <div class="user-msg">
                      Lorem ipsum dolor Lorem gdg Lorem ipsum dolor sit amet
                      consectetur adipisicing elit. Rem, numquam?
                    </div>
                  </div>

                  <div class="time-div">
                    <h3>20 min ago</h3>
                  </div>
                </div>

                <div class="msg-inner-div">
                  <div class="profile-div">
                    <img src="profile-img.jpg" />
                  </div>

                  <div class="msg-div">
                    <div class="user-name">
                      <h3>ABC KUMAR</h3>
                    </div>

                    <div class="user-msg">Lorem ipsum dolor Lorem gdg</div>
                  </div>

                  <div class="time-div">
                    <h3>20 min ago</h3>
                  </div>
                </div>

                <div class="msg-inner-div">
                  <div class="profile-div">
                    <img src="profile-img.jpg" />
                  </div>

                  <div class="msg-div">
                    <div class="user-name">
                      <h3>ABC KUMAR</h3>
                    </div>

                    <div class="user-msg">Lorem ipsum dolor Lorem gdg</div>
                  </div>

                  <div class="time-div">
                    <h3>20 min ago</h3>
                  </div>
                </div>

                <div class="msg-inner-div">
                  <div class="profile-div">
                    <img src="profile-img.jpg" />
                  </div>

                  <div class="msg-div">
                    <div class="user-name">
                      <h3>ABC KUMAR</h3>
                    </div>

                    <div class="user-msg">Lorem ipsum dolor Lorem gdg</div>
                  </div>

                  <div class="time-div">
                    <h3>20 min ago</h3>
                  </div>
                </div>

                <div class="msg-inner-div">
                  <div class="profile-div">
                    <img src="profile-img.jpg" />
                  </div>

                  <div class="msg-div">
                    <div class="user-name">
                      <h3>ABC KUMAR</h3>
                    </div>

                    <div class="user-msg">Lorem ipsum dolor Lorem gdg</div>
                  </div>

                  <div class="time-div">
                    <h3>20 min ago</h3>
                  </div>
                </div>
              </div>

              <div class="view-more-div">
                <div class="view-more-inner-div">
                  <a href="notification" style="color: black"
                    >View All Notification</a
                  >
                </div>
              </div>
            </div>
          </h4>
        </div>
      </div>

      <div class="profile">
        <img
          src="uploadfiles/profile.jpg"
          class="profimg"
          alt="profile-photo"
        />
        <div>
          <ul class="profile-link">
            <li
              style="
                text-transform: uppercase;
                font-size: 10.5px;
                margin-left: 10px;
                padding: 0.4rem;
                font-weight: 600;
              "
            >
              Welcome!
            </li>
            <li>
              <a href="profile"><i class="fa-solid fa-user icon"></i>Profile</a>
            </li>
            <li>
              <a href="help"
                ><i class="fa-solid fa-headset icon"></i>Help & Support</a
              >
            </li>
            <li>
              <a href="#"
                ><i class="fa-solid fa-person-running icon"></i>Logout</a
              >
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </body>
  <script>
    document.addEventListener("DOMContentLoaded", function () {
      const bell = document.querySelector(".fa-bell");
      const modal = document.querySelector(".modal");

      bell.addEventListener("click", () => {
        if (modal.style.display === "block") {
          modal.style.display = "none";
        } else {
          modal.style.display = "block";
        }
      });

      const userMessages = document.querySelectorAll(".user-msg");
      userMessages.forEach((message) => {
        const words = message.textContent.split(" ");
        if (words.length > 6) {
          message.textContent = words.slice(0, 6).join(" ") + "...";
        }
      });
    });
  </script>
</html>
