<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/ae73087723.js" crossorigin="anonymous"></script>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/apexcharts/3.46.0/apexcharts.min.js"></script>
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="css/admin.css">
</head>
<style>
  
  * {
    padding: 0;
    margin: 0;
    box-sizing: border-box;
  }

  .container {
    width: 80%;
    margin: auto;
  }

  i:hover {
    cursor: pointer;
  }

  #container-head {
    width: 100%;
    display: flex;
    justify-content: space-between;
    align-items: center;
  }

  #container-head h1 {
    font-size: 38px;
    font-weight: 900;
  }

  input[type="date"] {
    width: 200px;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    font-weight: 700;
    color: #888;
  }

  input[type="date"]::-webkit-calendar-picker-indicator {
    cursor: pointer;
  }


/*table style start..................................................................*/  
  table {
    width: 100%;
    border-collapse: separate;
    border-spacing: 0;
    border: 1px solid #ddd;
    border-radius: 10px;
    overflow: hidden;
    margin-top: 20px;
    box-shadow: 1px 1px 7px 1px rgba(0, 0, 0, 0.1);
  }

  th {
    padding: 25px;
    text-align: center;
    font-size: 1.1rem;
    color: #282c3f;
    font-weight: 900;
  }

  td {
    padding: 15px;
    text-align: center;
  }

  .name{
    font-weight: 900;
  }

  tbody tr:nth-child(odd) {
    background-color: #f7f6fe;
  }

  tr:first-child th:first-child {
    border-top-left-radius: 10px;
  }

  tr:first-child th:last-child {
    border-top-right-radius: 10px;
  }

  tr:last-child td:first-child {
    border-bottom-left-radius: 10px;
  }

  tr:last-child td:last-child {
    border-bottom-right-radius: 10px;
  }

  .profile-span {
    border: 5px solid powderblue;
    margin: auto;
    border-radius: 50%;
    width: 30px;
    height: 30px;
    display: flex;
    justify-content: center;
    align-items: center;
  }

  /* .profile-icon {
  width: 30px;
  height: 30px;
  border-radius: 50%;
} */

  .profile-img {
    height: 100%;
    border-radius: 50%;
  }

  .view-btn {
    cursor: pointer;
    background-color: transparent;
    border: none;
    font-size: 18px;
  }
  /*table style end..........................................................................*/



 /*modal style start.......................................................................*/ 
  .modal {
    display: none;
    position: fixed;
    z-index: 1;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    overflow: auto;
    background-color: rgb(0, 0, 0);
    background-color: rgba(0, 0, 0, 0.4);
    padding-top: 60px;
  }

  .modal-content {
    background-color: #fefefe;
    margin: 5% auto;
    padding: 20px;
    border: 1px solid #888;
    border-radius: 7px;
    width: 50%;
    min-height: 50vh;
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
    animation: fadeIn 0.8s ease;
  }

  @keyframes fadeIn {
    from {
      opacity: 0;
      transform: scale(1.9);
    }

    to {
      opacity: 1;
      transform: scale(1);
    }
  }

  #msg-content {
    text-align: left;
    padding: 20px;
    font-weight: 500;
  }
/*modal style end........................................................................*/



/*pagination style start..................................................................*/
  .pagination {
    display: flex;
    justify-content: center;
    margin: 20px 0;
  }

  .pagination button {
    padding: 10px 20px;
    margin: 0 5px;
    border: none;
    border-radius: 4px;
    background-color: #f2f2f2;
    cursor: pointer;
  }

  .pagination button.active {
    background-color: #4caf50;
    color: white;
  }

  .pagination button:hover:not(.active) {
    background-color: #ddd;
  }

  /*pagination style end..........................................................*/
</style>

<body>
    <!-- Sidebar Start -->
    <section id="sidebar">
        <div class="brandHead">
			<a href="/" class="brand" style="color: rgb(16, 8, 92);"><img
				src="uploadfiles/logo2.png" style="width: 50px; margin-right: 10px;" />Dashboard</a>
		</div>
		<ul class="side-menu">
			<li><a href="#" style="color: rgb(16, 8, 92); font-weight: 500"><i
					class="fa-solid fa-user icon"></i>Course Overview <i
					class="fa-solid fa-caret-down icon-right"></i></a>
				<ul class="side-dropdown">
					<li><a href="enroll"
						style="color: rgb(16, 8, 92); font-weight: 500"><i
							class="fa-solid fa-list" style="margin-right: 15px"></i>Enrolled Course</a></li>
					<li><a href="completed"
						style="color: rgb(16, 8, 92); font-weight: 500"><i
							class="fa-regular fa-user" style="margin-right: 15px"></i>Completed
							Course</a></li>
					<li><a href="upcoming"
						style="color: rgb(16, 8, 92); font-weight: 500"><i
							class="fa-solid fa-user-plus" style="margin-right: 15px"></i>Upcoming
							Course</a></li>
				</ul></li>
			<li><a href="testExam"
				style="color: rgb(16, 8, 92); font-weight: 500"><i
					class="fa-solid fa-calendar-days icon"></i>Tests/Exam</a></li>
			<li><a href="homework"
				style="color: rgb(16, 8, 92); font-weight: 500"><i
					class="fa-solid fa-book-open icon"></i>Homework</a></li>
			<li><a href="#"
				style="color: rgb(16, 8, 92); font-weight: 500"><i
					class="fa-solid fa-square-poll-vertical icon"></i>Access Learning Materials</a></li>
		</ul>
    </section>
    <!-- Sidebar End -->

    <!-- Navbar Start -->
    <section id="content">
        <nav class="navcont">
            <i class="fa-solid fa-bars toggle-sidebar"></i>
            <div class="subnav">
                <ul>
                    <li><a href="/"><img src="uploadfiles/logo.png"
                            style="width: 300px; margin-top: 10px;" /></a></li>
                </ul>
            </div>
    
            <div class="message">
                <div class="nav-link">
        <h4 class="bell-container">
          <i class="fa-solid fa-bell" style="color: #1a193b; font-size: 24px;">
            <span class="count" style="position: relative; right: 20px; top: -16px; font-size: 10px; background-color: red; color: white; border-radius: 50%; padding: 5px;">8</span>
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
    
                  <div class="user-msg">Lorem ipsum dolor Lorem gdg Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Rem, numquam?</div>
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
                 <a href="notification" style="color: black">View All Notification</a>
              </div>
            </div>
          </div>
        </h4>
                </div>
            </div>
    
    
            <div class="profile">
                <img src="uploadfiles/profile.jpg" class="profimg"
                    alt="profile-photo">
                <div>
                    <ul class="profile-link">
                        <li
                            style="text-transform: uppercase; font-size: 10.5px; margin-left: 10px; padding: .4rem; font-weight: 600;">
                            Welcome!</li>
                        <li><a href="profile"><i class="fa-solid fa-user icon"></i>Profile</a></li>
                        <li><a href="help"><i class="fa-solid fa-headset icon"></i>Help & Support</a></li>
                        <li><a href="#"><i class="fa-solid fa-person-running icon"></i>Logout</a></li>
                    </ul>
                </div>
            </div>
        </nav>

       <main class="mainCont">
    <div class="container">
      <div id="container-head">
        <h1>Notifications & Messages</h1>
        <input type="date" />
      </div>

      <table id="message-table">
        <thead>
          <tr>
            <th>Profile</th>
            <th>Name</th>
            <th>Message</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody></tbody>
      </table>

      <div class="pagination">
        <button id="prev-btn" onclick="prevPage()">Prev</button>
        <div id="page-numbers"></div>
        <button id="next-btn" onclick="nextPage()">Next</button>
      </div>
    </div>

    <div id="modal" class="modal">
      <div class="modal-content fade-in">
        <span class="close-btn" onclick="closeModal()">&times;</span><br />
        <p id="msg-content">msg content</p>
      </div>
    </div>
       </main>
    </section>
    <!-- Navbar End -->

    <script src="./adminscript.js"></script>
    <script src="js/adminscript.js"></script>
    <script>
    function openModal(fullText) {
        document.getElementById("msg-content").textContent = fullText;
        document.getElementById("modal").style.display = "block";
      }

      function closeModal() {
        document.getElementById("modal").style.display = "none";
      }

      window.onclick = function (event) {
        var modal = document.getElementById("modal");
        if (event.target == modal) {
          modal.style.display = "none";
        }
      };

      


      const messages = [
        {
          profile: "fa-solid fa-user",
          name: "ABC Kumar",
          message:
            "As discussed earlier Lorem ipsum dolor sit, amet consectetur adipisicing elit. Magnam",
        },
        {
          profile: "fa-solid fa-user",
          name: "ABC Kumar",
          message:
            "As discussed earlier Lorem ipsum dolor sit", 
        },
        {
          profile: "fa-solid fa-user",
          name: "ABC Kumar",
          message:
            "As discussed earlier Lorem ",
        },
        {
          profile: "fa-solid fa-user",
          name: "ABC Kumar",
          message:
            "As discussed earlier Lorem ipsum dolor sit, amet consectetur adipisicing elit. Magnam",
        },
        {
          profile: "fa-solid fa-user",
          name: "ABC Kumar",
          message:
            "As discussed earlier Lorem ipsum dolor sit, amet consectetur adipisicing elit. Magnam",
        },
        {
          profile: "fa-solid fa-user",
          name: "ABC Kumar",
          message:
            "As discussed earlier Lorem ipsum dolor sit, amet consectetur adipisicing elit. Magnam",
        },
        {
          profile: "fa-solid fa-user",
          name: "ABC Kumar",
          message:
            "As discussed earlier Lorem ipsum dolor sit, amet consectetur adipisicing elit. Magnam",
        },
        {
          profile: "fa-solid fa-user",
          name: "ABC Kumar",
          message:
            "As discussed earlier Lorem ipsum dolor sit, amet consectetur adipisicing elit. Magnam",
        },
        {
          profile: "fa-solid fa-user",
          name: "ABC Kumar",
          message:
            "As discussed earlier Lorem ipsum dolor sit, amet consectetur adipisicing elit. Magnam",
        },
        {
          profile: "fa-solid fa-user",
          name: "ABC Kumar",
          message:
            "As discussed earlier Lorem ipsum dolor sit, amet consectetur adipisicing elit. Magnam",
        },
        {
          profile: "fa-solid fa-user",
          name: "ABC Kumar",
          message:
            "As discussed earlier amet consectetur adipisicing elit. Illo voluptatem ab rem expedita excepturi, perferendis vitae beatae voluptas ",
        },
        {
          profile: "fa-solid fa-user",
          name: "ABC Kumar",
          message:
            "As discussed earlier amet consectetur adipisicing elit. Illo voluptatem ab rem expedita excepturi, perferendis vitae beatae voluptas ",
        },
        {
          profile: "fa-solid fa-user",
          name: "ABC Kumar",
          message:
            "As discussed earlier amet consectetur adipisicing elit. Illo voluptatem ab rem expedita excepturi, perferendis vitae beatae voluptas ",
        },
        {
          profile: "fa-solid fa-user",
          name: "ABC Kumar",
          message:
            "As discussed earlier amet consectetur adipisicing elit. Illo voluptatem ab rem expedita excepturi, perferendis vitae beatae voluptas ",
        },
        {
          profile: "fa-solid fa-user",
          name: "ABC Kumar",
          message:
            "As discussed earlier amet consectetur adipisicing elit. Illo voluptatem ab rem expedita excepturi, perferendis vitae beatae voluptas ",
        },
      ];

      const rowsPerPage = 8;
      let currentPage = 1;
      const totalPages = Math.ceil(messages.length / rowsPerPage);


      function displayPage(page) {
        const tableBody = document.querySelector("#message-table tbody");
        tableBody.innerHTML = "";

        const start = (page - 1) * rowsPerPage;
        const end = start + rowsPerPage;
        const pageMessages = messages.slice(start, end);

        pageMessages.forEach((message) => {
          const row = document.createElement("tr");
          row.innerHTML = `
          <td><span class="profile-span"><img src="profile-img.jpg" class="${message.profile} profile-img"></span></td>
          <td class="name">${message.name}</td>
          <td class="cut-text" data-full-text="${message.message}"></td>
          <td><button class="view-btn" onclick="openModal('${message.message}')"><i class="fa-solid fa-eye" style="color: #55a2dd;"></i></button></td>
        `;
          tableBody.appendChild(row);
        });

        const cells = document.querySelectorAll(".cut-text");
        cells.forEach((cell) => {
          const fullText = cell.getAttribute("data-full-text");
          const words = fullText.split(" ");
          if (words.length > 10) {
            const cutText = words.slice(0, 10).join(" ") + "...";
            cell.textContent = cutText;
          } else {
            cell.textContent = fullText;
          }
        });

        updatePagination();
      }

      function updatePagination() {
        const pageNumbers = document.getElementById("page-numbers");
        pageNumbers.innerHTML = "";
        for (let i = 1; i <= totalPages; i++) {
          const button = document.createElement("button");
          button.textContent = i;
          if (i === currentPage) {
            button.classList.add("active");
          }
          button.addEventListener("click", () => goToPage(i));
          pageNumbers.appendChild(button);
        }
      }

      function prevPage() {
        if (currentPage > 1) {
          currentPage--;
          displayPage(currentPage);
        }
      }

      function nextPage() {
        if (currentPage < totalPages) {
          currentPage++;
          displayPage(currentPage);
        }
      }

      function goToPage(page) {
        currentPage = page;
        displayPage(currentPage);
      }

      document.addEventListener("DOMContentLoaded", function () {
        displayPage(currentPage);
      });
    </script>
</body>

</html>