<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Dashboard</title>
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
      /* font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande",
        "Lucida Sans", Arial, sans-serif;
      color: #282c3f; */
    }

    html,
    body {
      width: 100%;
      height: 100%;
      background-color: #0093e9;

    }

    main {
      width: 100%;
      height: 100%;
      position: relative;
    }

    .dashboard-main {
      width: 100%;
      height: 100vh;
      display: flex;
      justify-content: space-evenly;
      flex-wrap: wrap;
      background-image: linear-gradient(160deg, #0093e9 0%, #80d0c7 100%);
    }

    /*card style start.........................................................*/
    .card {
      width: 25%;
      min-width: 250px;
      max-width: 400px;
      height: 60%;
      box-shadow: 0px 0px 4px 0px rgba(50, 145, 125, 0.342);
      border-radius: 3px;
      position: relative;
      overflow: hidden;
      /* background: rgba(255, 255, 255, 0.2); */
      backdrop-filter: blur(10px);
      border: 1px solid rgba(255, 255, 255, 0.3);
    }

    .card:hover {
      box-shadow: 0px 0px 8px 1px rgba(50, 145, 125, 0.342);
    }

    .card-heading-div {
      width: 100%;
      height: 50%;
      display: flex;
      align-items: center;
      z-index: 2;
      justify-content: space-between;
    }

    .card-heading-div {
      font-size: 1.3rem;
      font-weight: 900;
    }

    .view-more-div {
      width: 100%;
      height: 50%;
      display: flex;
      justify-content: center;
      align-items: center;
      z-index: 2;
      border-top: none;
    }

    .view-more-div span {
      font-size: 1.2rem;
      font-weight: 500;
    }

    .card:hover .view-more-div span {
      color: white;
    }

    .btn-one {
      color: #0093e9;
      transition: all 0.3s;
      position: relative;
      padding: 15px;
      border-radius: 4px;
    }

    .card:hover .btn-one {
      background-color: #282c3f;
      border-radius: 4px;
    }

    .btn-one span {
      transition: all 0.3s;
    }

    .btn-one::before {
      content: "";
      position: absolute;
      bottom: 0;
      top: -4%;
      left: -5%;
      width: 110%;
      height: 105%;
      z-index: 1;
      opacity: 0;
      transition: all 0.3s;
      transform: scale(0.1, 1);
    }

    .btn-one:hover span {
      letter-spacing: 2px;
    }

    .btn-one:hover::before {
      opacity: 1;
      transform: scale(1, 1);
    }

    .btn-one::after {
      content: "";
      position: absolute;
      bottom: 0;
      left: 0;
      width: 100%;
      height: 100%;
      z-index: 1;
      transition: all 0.3s;
      background-color: rgba(255, 255, 255, 0.1); */
    }

    .btn-one:hover::after {
      opacity: 0;
      transform: scale(0.1, 1);
    }

    /*card style end.........................................................*/

    /*modal style start.........................................................*/
    .modal1 {
      display: none;
      position: fixed;
      z-index: 1;
      left: 0;
      right: 0;
      top: 0;
      bottom: 0;
      width: 100%;
      height: 100%;
      overflow: hidden;
      /* background-color: rgba(255, 255, 255, 0.3); */
      /* background-color: rgba(164, 157, 157, 0.386); */
      backdrop-filter: blur(7px);
    }

    .modal-content1 {
      background-color: rgba(255, 255, 255, 0.2);
      backdrop-filter: blur(10px);
      border-radius: 7px;
      border: 1px solid rgba(255, 255, 255, 0.3);
      margin: 5% auto;
      padding: 20px 20px;
      width: 40%;
      height: 50%;
      min-height: 50vh;
      margin-top: 120px;
      overflow-y: auto;
    }

    .modal-content1::-webkit-scrollbar {
      width: 12px;
    }

    .modal-content1::-webkit-scrollbar-thumb {
      background-color: rgba(255, 255, 255, 0.4);
      border-radius: 10px;
    }

    .modal-content1::-webkit-scrollbar-thumb:hover {
      background-color: rgba(255, 255, 255, 0.5);
    }

    .close-btn {
      color: #aaa;
      float: right;
      font-size: 28px;
      font-weight: bold;
    }

    .close-btn:hover,
    .close-btn:focus {
      color: black;
      text-decoration: none;
      cursor: pointer;
    }

    .fade-in {
      animation: fadeIn 0.8s ease-in-out;
    }

    @keyframes fadeIn {
      from {
        opacity: 0;
        transform: scale(2);
      }

      to {
        opacity: 1;
        transform: scale(1);
      }
    }

    table {
      width: 80%;
      border-collapse: collapse;
      margin: 20px auto;
      text-align: center;
      height: 80%;
      max-height: 80%;
    }

    .modal-heading {
      text-align: center;
    }

    th,
    td {
      padding: 10px;
    }

    th {
      font-weight: bold;
    }

    td {
      font-weight: lighter;
    }

    table tr:hover {
      background-color: #f1f1f1;
    }

    table tr:first-child:hover {
      background-color: inherit;
    }

    /*modal style end..................................................................*/

    /*responsive style start.........................................................*/
    @media (max-width: 800px) {
      html,
      body {
        width: 100%;
        height: auto;
      }

      main {
        width: 100%;
        height: 100%;
        position: relative;
      }

      .dashboard-main {
        width: 100%;
        height: 100%;
        display: flex;
        flex-direction: column;
        justify-content: space-around;
        align-items: center;
      }

      .card {
        width: 70%;
        min-width: 270px;
        max-width: 400px;
        height: 60vh;
      }

      .card:nth-child(odd) {
        margin-top: 15%;
        margin-bottom: 15%;
      }

      .modal-content1 {
        background-color: rgba(255, 255, 255, 0.2);
        backdrop-filter: blur(10px);
        border-radius: 7px;
        border: 1px solid rgba(255, 255, 255, 0.3);
        margin: 5% auto;
        padding: 20px;
        width: 80%;
        min-width: 280px;
        height: 70vh;
        min-height: 50vh;
        margin-top: 100px;
      }
    }

    /*responsive style end.........................................................*/
  </style>

  <body>
    <jsp:include page="sidenav.jsp"></jsp:include>
    <section id="content">
      <jsp:include page="header.jsp"></jsp:include>
      <main>
        <div class="dashboard-main">
          <div class="card">
            <div class="card-heading-div">
              <h3 style="margin-left: 20px;">Courses</h3>
              <i class="fa-solid fa-book" style="font-size: 50px; margin-right: 20px;"></i>
            </div>
            <div class="view-more-div">
              <div class="btn1 btn-one" data-type="courses">
                <span>view more</span>
              </div>
            </div>
          </div>
          <div class="card">
            <div class="card-heading-div">
              <h3>Upcoming Homework</h3>
              <i class="fa-solid fa-calendar-days" style="font-size: 50px; margin-right: 20px;"></i>
            </div>
            <div class="view-more-div">
              <div class="btn1 btn-one" data-type="homework">
                <span>view more</span>
              </div>
            </div>
          </div>
          <div class="card">
            <div class="card-heading-div">
              <h3>Upcoming Test</h3>
              <i class="fa-solid fa-file" style="font-size: 50px; margin-right: 20px;"></i>
            </div>
            <div class="view-more-div">
              <div class="btn1 btn-one" data-type="tests">
                <span>view more</span>
              </div>
            </div>
          </div>
        </div>

        <div id="modal" class="modal1">
          <div class="modal-content1 fade-in">
            <span class="close-btn" onclick="closeModal()">&times;</span><br />
            <div id="modal-content1"></div>
          </div>
        </div>
      </main>
    </section>
    <script src="js/index.js"></script>

    <script>
      const modal = document.querySelector(".modal1");
      const btns = document.querySelectorAll(".btn1");
      const modalContent = document.getElementById("modal-content1");

      const data = {
        courses: {
          heading: "Courses",
          items: [{ title: "JLPT N5" }, { title: "JLPT N4" }],
        },
        homework: {
          heading: "Upcoming Homework",
          items: [
            { name: "Homework-1", dueDate: "22 April 2024" },
            { name: "Homework-2", dueDate: "23 April 2024" },
            { name: "Homework-3", dueDate: "24 April 2024" },
            { name: "Homework-1", dueDate: "22 April 2024" },
            { name: "Homework-2", dueDate: "23 April 2024" },
            { name: "Homework-3", dueDate: "24 April 2024" },
            { name: "Homework-1", dueDate: "22 April 2024" },
            { name: "Homework-2", dueDate: "23 April 2024" },
            { name: "Homework-3", dueDate: "24 April 2024" },
            { name: "Homework-3", dueDate: "24 April 2024" },
            { name: "Homework-1", dueDate: "22 April 2024" },
            { name: "Homework-2", dueDate: "23 April 2024" },
            { name: "Homework-3", dueDate: "24 April 2024" },
          ],
        },
        tests: {
          heading: "Upcoming Tests",
          items: [
            { name: "Test-1", date: "22 April 2024" },
            { name: "Test-2", date: "23 April 2024" },
          ],
        },
      };

      btns.forEach((btn) => {
        btn.addEventListener("click", () => {
          const type = btn.getAttribute("data-type");
          const contentData = data[type];
          let content = `<h2 class="modal-heading">${contentData.heading}</h2>`;

          if (type === "courses") {
            content =
              content +
              contentData.items
                .map((course) => `<h3>${course.title}</h3>`)
                .join("");
          } else if (type === "homework") {
            const items = contentData.items;
            content =
              content + "<table><tr><th>Title</th><th>Due Date</th></tr>";
            content =
              content +
              items
                .map(
                  (item) =>
                    `<tr><td>${item.name}</td><td>${
                      item.dueDate || item.date
                    }</td></tr>`
                )
                .join("");
            content = content + "</table>";
          } else if (type === "tests") {
            const items = contentData.items;
            content = content + "<table><tr><th>Name</th><th>Date</th></tr>";
            content =
              content +
              items
                .map(
                  (item) =>
                    `<tr><td>${item.name}</td><td>${
                      item.dueDate || item.date
                    }</td></tr>`
                )
                .join("");
            content = content + "</table>";
          }

          modalContent.innerHTML = content;
          modal.style.display = "block";
        });
      });

      function closeModal() {
        modal.style.display = "none";
      }

      window.onclick = function (event) {
        if (event.target === modal) {
          modal.style.display = "none";
        }
      };
    </script>
  </body>
</html>
