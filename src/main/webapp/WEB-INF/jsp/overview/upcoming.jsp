<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Insert title here</title>
  </head>
  <style>
    .Container {
      width: 100%;
      height: 100vh;
      margin-top: 50px;
      box-sizing: border-box;
    }

    /*modal css start..................................................................*/

    .modal-background {
      position: fixed;
      top: 0;
      left: 0;
      width: 100vw;
      height: 100vh;
      z-index: 999;

      display: none;
    }

    .modal-main {
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      width: 90%;
      max-width: 90%;
      height: 80%;
      border: 3px solid #0a415a;
      border-radius: 20px;
      background-color: white;
      overflow: auto;
    }

    .modal-main::-webkit-scrollbar {
      width: 0;
    }

    .modal-main::-webkit-scrollbar-track {
      background: transparent;
    }

    .modal-main::-webkit-scrollbar-thumb {
      background: transparent;
    }

    .modal-head-cancel {
      display: flex;
      width: 100%;
      background-color: #f5f5fa;
    }

    .modal-head {
      width: 90%;
      display: flex;
      align-items: center;
      justify-content: space-around;
      margin-left: 10%;
    }

    .modal-head h4 {
      margin-left: 10%;
    }

    .modal-cancel {
      width: 10%;
      display: flex;
      justify-content: right;
      align-items: center;
      margin-right: 20px;
    }

    .modal-head h3 {
      font-weight: 750;
      font-size: 1.5rem;
    }

    .modal-bottom-div {
      width: 100%;
      height: 90%;

      display: flex;
      padding: 2% 0;
      margin-bottom: 0%;
      background-color: #f0f0f5;
    }

    .bottom-right-list {
      width: 50%;
      padding: 0 2%;
    }

    .list-main {
      width: 90%;
      padding: 2%;
      background-color: white;
      border-radius: 10px;
    }

    .bottom-right-list ol {
      width: 80%;
      background-color: white;
    }

    ol li:nth-child(even) {
      background-color: #e8e8e8;
    }

    .bottom-right-list ol li {
      width: 100%;
      padding: 2%;
      font-size: 17px;
    }

    .bottom-right-list ol li h5 {
      padding: 0.5%;
      color: #6dd09e;
    }

    ol li:nth-child(even) span {
      color: red;
    }

    .bottom-left-score {
      width: 50%;
      padding: 2%;
      display: flex;
      justify-content: space-around;
    }

    .modal-score,
    .modal-percentage {
      width: 40%;
      height: 5vh;
      text-align: center;
      display: flex;
      justify-content: space-around;
      align-items: center;
      padding: 1.5% 0;
      border-radius: 5px;
    }

    /*modal-css ends.......................................................*/

    /*input css start*/

    .input-upper-div input {
      background: none;
      border: none;
      border-bottom: 2px solid grey;
      padding: 12px;
      position: relative;
      margin-right: 2%;
    }

    .iconmag {
      position: absolute;
      right: 3.5%;
    }
    /*input css ends*/

    /*table css start*/
    .table-upper {
      padding: 2% 1%;
      background-color: white;
      margin-top: 1%;
    }

    .MainTable {
      border-collapse: collapse;
      margin-top: 20px;
      background: #fff;
      border-radius: 7px;
      border: 1.5px solid #e8e8e8;
      padding: 20px;
      cursor: pointer;
      text-align: center;
      cursor: pointer;
      width: 100%;
      min-width: 50px;
    }

    .tableheading {
      border-bottom: 1px solid rgb(208, 208, 208);
      background-color: #36454f;
    }

    .tableheading th {
      padding: 1rem;
      text-transform: capitalize;
      letter-spacing: 0.1rem;
      font-size: 0.9rem;
      font-weight: 600;
      color: rgb(56, 56, 56);
      padding: 2%;
    }

    .tablebody {
      padding: 1rem 1.8rem;
      font-weight: 500;
      font-size: 13.5px;
    }

    table tbody tr td {
      font-size: 14px;
      letter-spacing: 0.35px;
      font-weight: normal;
      color: black;
      background-color: white;
      padding: 18px;
      text-align: center;
    }
    /*table css ends*/

    @media screen and (max-width: 768px) {
      .MainTable {
        overflow: scroll;
      }
    }

    .iconmag {
      position: absolute;
      top: 11.2rem;
      right: 2rem;
    }
  </style>
  <body>
    <jsp:include page="../sidenav.jsp"></jsp:include>
    <section id="content">
      <jsp:include page="../header.jsp"></jsp:include>
      <main>
        <div class="Container">
          <div class="heading-div" style="width: 100%; text-align: center">
            <h1
              style="
                margin-top: 30px;
                text-align: center;
                font-weight: 600;
                font-size: 30px;
              "
            >
              ENROLLED COURSES
            </h1>
          </div>

          <div
            class="input-upper-div"
            style="
              width: 100%;
              display: flex;
              justify-content: right;
              padding: 1% 0;
              align-items: center;
            "
          >
            <div style="margin-right: 20px">
              <div style="display: inline">
                <input
                  type="text"
                  placeholder="Search"
                  style="
                    background: none;
                    border: none;
                    border-bottom: 2px solid grey;
                    padding: 12px;
                  "
                />
                <span class="fa-solid fa-magnifying-glass iconmag"></span>
              </div>
            </div>
          </div>

          <div class="table-upper">
            <table class="MainTable">
              <thead class="tableheading">
                <tr>
                  <th style="width: 100px; font-weight: 800; color: white">
                    SrNo
                  </th>
                  <th style="font-weight: 800; color: white">Batch Name</th>
                  <th style="font-weight: 800; color: white">Days</th>
                  <th style="font-weight: 800; color: white">Date</th>
                  <th style="font-weight: 800; color: white">Timings</th>
                  <th style="font-weight: 800; color: white">Status</th>
                </tr>
              </thead>

              <tbody class="tablebody">
                <tr>
                  <td style="font-weight: 500">1</td>
                  <td style="font-weight: 500">N5-10</td>
                  <td style="font-weight: 500">Monday</td>
                  <td style="font-weight: 500">1st April 2024</td>
                  <td style="font-weight: 500">9:00 PM to 10:00 PM</td>
                  <td style="font-weight: 500">Pending</td>
                </tr>

                <tr>
                  <td style="font-weight: 500">1</td>
                  <td style="font-weight: 500">N5-10</td>
                  <td style="font-weight: 500">Monday</td>
                  <td style="font-weight: 500">1st April 2024</td>
                  <td style="font-weight: 500">9:00 PM to 10:00 PM</td>
                  <td style="font-weight: 500">Pending</td>
                </tr>

                <tr>
                  <td style="font-weight: 500">1</td>
                  <td style="font-weight: 500">N5-10</td>
                  <td style="font-weight: 500">Monday</td>
                  <td style="font-weight: 500">1st April 2024</td>
                  <td style="font-weight: 500">9:00 PM to 10:00 PM</td>
                  <td style="font-weight: 500">Pending</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </main>
    </section>
  </body>

  <script src="js/adminscript.js"></script>
</html>
