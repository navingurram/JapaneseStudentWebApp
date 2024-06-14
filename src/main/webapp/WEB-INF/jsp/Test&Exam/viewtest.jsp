<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>MCQ</title>
    <style>
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }

      html,
      body {
        height: 100%;
      }

      body {
        width: 100%;
        background-color: #1f414b;
        background-color: white;
      }

      main {
        width: 100%;
        min-height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
      }

      .mcq-main {
        width: 50%;
        min-width: 300px;
        margin-left: auto;
        margin-right: auto;
        display: flex;
        flex-direction: column;
        gap: 1.2rem;
      }

      .mcq-inner-div {
        width: 100%;
        backdrop-filter: blur(10px);
        border-radius: 20px;
        padding: 5px;
        box-shadow: 0px 0px 8px 0px #55d0ff;
      }

      .mcq-inner-div:hover {
        box-shadow: 0px 0px 16px 1px #55d0ff;
      }

      .mcq-detail-div {
        width: 100%;
        padding: 15px 10px;
        text-align: left;
        border-radius: 20px;
      }

      .mcq-detail-div h4 {
        font-size: 16px;
        font-weight: 600;
      }

      .mcq-que-ans-div {
        width: 100%;
        border-radius: 5px;
      }

      /*question style start..........................................................*/
      .question-div {
        width: 100%;
        padding: 15px 10px;
        margin-top: 5px;
        border-radius: 5px;
        margin-bottom: 10px;
      }

      .question-div h4 {
        font-size: 16px;
        font-weight: 700;
      }

      .ans-div {
        width: 100%;
        display: flex;
        flex-direction: column;
      }
      /*question style end..........................................................*/

      /*option style start..........................................................*/
      .ans-div span {
        padding: 11px 10px;
        display: flex;
        align-items: center;
        margin-bottom: 10px;
        cursor: pointer;
        transition: background-color 0.3s, color 0.3s;
        border-radius: 5px;
        border: 1px solid transparent;
      }

      /* .ans-div span:hover {
        border: 1px solid #50e3c2;
        background-color: rgba(80, 227, 194, 0.1);
      } */

      /* .ans-div span label {
        color: red;
      } */

      .ans-div span .right {
        color: #50e3c2;
      }
      /*option style end..........................................................*/

      /*checkbox style start..........................................................*/

      .ans-div input[type="checkbox"],
      .ans-div input[type="radio"] {
        display: none;
      }

      .ans-div input[type="checkbox"] + label,
      .ans-div input[type="radio"] + label {
        position: relative;
        padding-left: 30px;
        cursor: pointer;
        font-size: 16px;
        font-weight: 600;
      }

      .ans-div input[type="checkbox"] + label:before {
        content: "";
        display: inline-block;
        width: 20px;
        height: 20px;
        background-color: transparent;
        border: 2px solid #b2b1b1;
        border-radius: 5px;
        position: absolute;
        left: 0;
        top: 50%;
        transform: translateY(-50%);
        transition: background-color 0.3s, border-color 0.3s;
      }

      .ans-div input[type="checkbox"]:checked + label:before {
        background-color: #50e3c2;
        border: 2px solid #50e3c2;
      }

      .ans-div input[type="checkbox"]:checked + label:after {
        content: "";
        display: block;
        width: 12px;
        height: 12px;
        background-color: #50e3c2;
        position: absolute;
        left: 6px;
        top: 50%;
        transform: translateY(-50%);
      }

      /*checkbox style end..........................................................*/

      /*radio style start..........................................................*/

      .ans-div input[type="radio"] + label:before {
        content: "";
        display: inline-block;
        width: 20px;
        height: 20px;
        border: 2px solid #dfdddd;
        border-radius: 50%;
        position: absolute;
        left: 0;
        top: 50%;
        transform: translateY(-50%);
        transition: background-color 0.3s, border-color 0.3s;
        background-color: transparent;
      }

      .ans-div input[type="radio"]:checked + label:before {
        background-color: #50e3c2;
        border: 2px solid #50e3c2;
      }

      .ans-div input[type="radio"]:checked + label:after {
        content: "";
        display: block;
        width: 12px;
        height: 12px;
        background-color: #50e3c2;
        border-radius: 50%;
        position: absolute;
        left: 5px;
        top: 50%;
        transform: translateY(-50%);
      }

      .ans-div input[type="checkbox"] + label:hover:before,
      .ans-div input[type="radio"] + label:hover:before {
        border-color: #555;
      }

      /*radio style end..........................................................*/

      @media (max-width: 1000px) {
        body {
          width: 100%;
        }

        main {
          width: 100%;
        }

        .mcq-main {
          width: 40%;
          margin-left: auto;
          margin-right: auto;
          text-align: center;
        }

        .mcq-inner-div {
          width: 100%;
          border-radius: 10px;
          margin-bottom: 10px;
          margin: 10px 0 10px 0;
        }

        .mcq-detail-div {
          text-align: center;
        }
      }

      .bottom-left {
	width: 50%;
	display: flex;
	flex-direction: column;
    justify-content: flex-end;
	gap: 10px;
    position: relative;
    left: 600px;
}

.modal-score, .modal-percentage {
	width: 80%;
	background-color: #82c8eb;
	border: 2px solid #05739B;
	padding: 8px;
	border-radius: 7px;
}

.modal-score h4, .modal-percentage h4 {
	font-weight: 600;
	color: white;
	font-size: 18px;
	margin-left: 5%;
}

.modal-score span, .modal-percentage span {
	float: right;
}
    </style>
  </head>

  <body>
    <jsp:include page="../sidenav.jsp"></jsp:include>
    <section id="content">
      <jsp:include page="../header.jsp"></jsp:include>
      <main>
        <div class="mcq-main">
          <h1
            style="
              margin-top: 30px;
              text-align: center;
              font-weight: 600;
              font-size: 30px;
            "
          >
            VIEW TEST
          </h1>
          <div class="bottom-left">
            <div class="modal-score">
              <h4>Score <span>11/30</span></h4>
            </div>

            <div class="modal-percentage">
              <h4>Percentage <span>11/30</span></h4>
            </div>
          </div>
          <div class="mcq-inner-div" style="margin-top: 20px;">
            <div class="mcq-detail-div">
              <h4>
                Lorem ipsum dolor sit amet consectetur adipisicing elit.
                Dignissimos, quasi?
              </h4>
            </div>
            <div class="mcq-que-ans-div">
              <div class="question-div">
                <h4>
                  Lorem ipsum dolor sit amet consectetur adipisicing elit.
                </h4>
              </div>
              <div class="ans-div">
                <span class="checkbox-span">
                  <label
                    for="checkbox1"
                    class="checkbox-option"
                    style="color: green"
                    ><i
                      class="fa-solid fa-check"
                      style="padding-right: 10px"
                    ></i
                    >Option 1</label
                  >
                </span>
                <span class="checkbox-span">
                  <label for="checkbox2" class="checkbox-option"
                    >Option 2</label
                  >
                </span>
                <span class="checkbox-span">
                  <label
                    for="checkbox3"
                    class="checkbox-option"
                    style="color: red"
                    ><i
                      class="fa-solid fa-xmark"
                      style="padding-right: 10px"
                    ></i
                    >Option 3</label
                  >
                </span>
                <span class="checkbox-span">
                  <label for="checkbox4" class="checkbox-option"
                    >Option 4</label
                  >
                </span>
              </div>
            </div>
          </div>

          <div class="mcq-inner-div">
            <div class="mcq-detail-div">
              <h4>
                Lorem ipsum dolor sit amet consectetur adipisicing elit.
                Dignissimos, quasi Lorem ipsum dolor sit amet consectetur
                adipisicing elit. Voluptates, magni?
              </h4>
            </div>
            <div class="mcq-que-ans-div">
              <div class="question-div">
                <h4>
                  Lorem ipsum dolor sit amet consectetur adipisicing elit. Lorem
                  ipsum dolor sit amet consectetur adipisicing elit. Error,
                  nisi.
                </h4>
              </div>
              <div class="ans-div">
                <span class="radio-span">
                  <label for="radio1">Option 1</label>
                </span>
                <span class="radio-span">
                  <label for="radio2" style="color: green"
                    ><i
                      class="fa-solid fa-check"
                      style="padding-right: 10px"
                    ></i
                    >Option 2</label
                  >
                </span>
                <span class="radio-span">
                  <label for="radio3">Option 3</label>
                </span>
                <span class="radio-span">
                  <label for="radio4" style="color: red"
                    ><i
                      class="fa-solid fa-xmark"
                      style="padding-right: 10px"
                    ></i
                    >Option 4</label
                  >
                </span>
              </div>
            </div>
          </div>
        </div>
      </main>
    </section>
    <script src="js/adminscript.js"></script>
  </body>
</html>
