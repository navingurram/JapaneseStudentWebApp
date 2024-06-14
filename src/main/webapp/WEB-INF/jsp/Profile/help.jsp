<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Update Batch</title>
    <link rel="stylesheet" href="css/admin.css" />
    <script
      src="https://kit.fontawesome.com/ae73087723.js"
      crossorigin="anonymous"
    ></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  </head>
  <style>
    .Container {
      width: 100%;
      height: 100vh;
    }

    .container2 {
      display: grid;
      grid-template-columns: 1fr;
      grid-gap: 30px;
    }

    @media screen and (max-width: 1000px) {
      .container2 {
        grid-template-columns: 1fr;
      }
    }
  </style>

  <body>
    <jsp:include page="../sidenav.jsp"></jsp:include>
    <section id="content">
      <jsp:include page="../header.jsp"></jsp:include>
      <main>
        <div>
          <h1
            style="
              margin-bottom: 30px;
              text-align: center;
              font-weight: 600;
              font-size: 30px;
            "
          >
            HELP & WORKING SUPPORT
          </h1>
          <div class="container2" style="margin-left: 20px; margin-right: 20px">
            <h3>Contact Number</h3>
            <input type="hidden" id="id" name="id" />
            <div style="display: flex; flex-direction: column">
              <label
                style="font-size: 16px; font-weight: 700; margin-bottom: 15px"
              >
                Ainoura San</label
              >
              <label
                id="batchName"
                name="batchName"
                type="text"
                required="required"
                style="
                  padding: 16px;
                  border-radius: 5px;
                  background-color: none;
                  border: none;
                  border-bottom: 1px solid #bfb8b8;
                "
              >
                +81565588555</label
              >
            </div>
            <div style="display: flex; flex-direction: column">
              <label
                style="font-size: 16px; font-weight: 700; margin-bottom: 7px"
              >
                Zade San</label
              >
              <label
                id="teacher"
                name="teacher"
                type="text"
                required="required"
                style="
                  padding: 16px;
                  border-radius: 5px;
                  background-color: none;
                  border: none;
                  border-bottom: 1px solid #bfb8b8;
                "
                >+9874548454548</label
              >
            </div>

            <h3>Email Id</h3>
            <div>
              <label
                style="font-size: 13px; font-weight: 500; margin-bottom: 7px"
              >
                myjapaneset2@gmail.com</label
              >
            </div>
            <div>
              <label
                style="font-size: 13px; font-weight: 500; margin-bottom: 7px"
              >
                rakesh.zade78@gmail</label
              >
            </div>
          </div>
        </div>
      </main>
    </section>
    <script src="js/adminscript.js"></script>
  </body>
</html>
