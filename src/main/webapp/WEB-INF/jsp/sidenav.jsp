<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Insert title here</title>
    <link rel="stylesheet" href="css/admin.css" />
    <script
      src="https://kit.fontawesome.com/ae73087723.js"
      crossorigin="anonymous"
    ></script>
  </head>
  <body>
    <section id="sidebar">
      <div class="brandHead">
        <a href="/" class="brand" style="color: rgb(16, 8, 92)"
          ><img
            src="uploadfiles/logo2.png"
            style="width: 50px; margin-right: 10px"
          />Dashboard</a
        >
      </div>
      <ul class="side-menu">
        <li>
          <a href="#" style="color: rgb(16, 8, 92); font-weight: 500"
            ><i class="fa-solid fa-user icon"></i>Course Overview
            <i class="fa-solid fa-caret-down icon-right"></i
          ></a>
          <ul class="side-dropdown">
            <li>
              <a href="enroll" style="color: rgb(16, 8, 92); font-weight: 500"
                ><i class="fa-solid fa-list" style="margin-right: 15px"></i
                >Enrolled Course</a
              >
            </li>
            <li>
              <a
                href="completed"
                style="color: rgb(16, 8, 92); font-weight: 500"
                ><i class="fa-regular fa-user" style="margin-right: 15px"></i
                >Completed Course</a
              >
            </li>
            <li>
              <a href="upcoming" style="color: rgb(16, 8, 92); font-weight: 500"
                ><i class="fa-solid fa-user-plus" style="margin-right: 15px"></i
                >Upcoming Course</a
              >
            </li>
          </ul>
        </li>
        <li>
          <a href="testExam" style="color: rgb(16, 8, 92); font-weight: 500"
            ><i class="fa-solid fa-calendar-days icon"></i>Tests/Exam</a
          >
        </li>
        <li>
          <a href="homework" style="color: rgb(16, 8, 92); font-weight: 500"
            ><i class="fa-solid fa-book-open icon"></i>Homework</a
          >
        </li>
        <li>
          <a href="#" style="color: rgb(16, 8, 92); font-weight: 500"
            ><i class="fa-solid fa-square-poll-vertical icon"></i>Access
            Learning Materials</a
          >
        </li>
      </ul>
    </section>
  </body>
</html>
