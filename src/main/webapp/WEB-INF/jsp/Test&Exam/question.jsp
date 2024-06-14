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

      .container {
        width: 100%;
      }

      .headerMain {
        line-height: 50px;
        box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
        width: 100%;
        position: fixed;
        background-color: white;
        z-index: 1000;
      }

      main {
        width: 100%;
        min-height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
      }

      .mcq-main {
        width: 70%;
        min-width: 300px;
        margin-left: auto;
        margin-right: auto;
        margin-top: 50px;
        display: flex;
        flex-direction: column;
        gap: 1.2rem;
      }

      .mcq-inner-div {
        width: 100%;
        backdrop-filter: blur(10px);
        border-radius: 20px;
        padding: 5px;
        box-shadow: 0px 0px 8px 0px #4fe0c1d9;
        z-index: 1;
      }

      .mcq-inner-div:hover {
        box-shadow: 0px 0px 16px 1px #4fe0c1d9;
      }

      .mcq-detail-div {
        width: 100%;
        padding: 15px 10px;
        text-align: left;
        border-radius: 20px;
      }

      .mcq-detail-div h4 {
        font-size: 16px;
        font-weight: 500;
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
        padding: 0px 10px;
        display: flex;
        align-items: center;
        margin-bottom: 10px;
        cursor: pointer;
        transition: background-color 0.3s, color 0.3s;
        border-radius: 5px;
        border: 1px solid transparent;
      }

      .ans-div span:hover {
        border: 1px solid #50e3c2;
        background-color: rgba(80, 227, 194, 0.1);
      }

      .ans-div span label {
        width: 100%;

        padding: 11px 4px;
        color: #282c3f;
      }

      .ans-div span .selected {
        color: #43b69deb;
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
        content: "✓";
        display: block;

        color: #1f414b;
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
        background-color: #337668;
        border-radius: 50%;
        position: absolute;
        left: 5.5px;
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
        }

        .mcq-inner-div {
          width: 100%;
          border-radius: 10px;
          margin-bottom: 10px;
          margin: 10px 0 10px 0;
        }

        .mcq-detail-div,
        .question-div {
          text-align: center;
        }
      }

      .countdown {
        font-size: 30px;
      }
    </style>
  </head>

  <body>
      <main>
        <div class="container">
            <div style="display: flex; justify-content: space-between;" class="headerMain">
            <div style="margin-left: 20px;">
                <h3>TEST EXAM</h3>
            </div>
            <div>
                <div id="countdown" class="countdown"></div>
            </div>
            <div style="margin-right: 20px;">
                <h4>Quit Assesment</h4>
            </div>
            </div>
        <div class="mcq-main">
            <h1
              style="
                margin-top: 30px;
                text-align: center;
                font-weight: 600;
                font-size: 30px;
              "
            >
            TEST
            </h1>
          <div class="mcq-inner-div">
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
                  <input type="checkbox" id="checkbox1" />
                  <label for="checkbox1" class="checkbox-option"
                    >Option 1</label
                  >
                </span>
                <span class="checkbox-span">
                  <input type="checkbox" id="checkbox2" />
                  <label for="checkbox2" class="checkbox-option"
                    >Option 2</label
                  >
                </span>
                <span class="checkbox-span">
                  <input type="checkbox" id="checkbox3" />
                  <label for="checkbox3" class="checkbox-option"
                    >Option 3</label
                  >
                </span>
                <span class="checkbox-span">
                  <input type="checkbox" id="checkbox4" />
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
                  <input type="radio" id="radio1" name="radio-group-1" />
                  <label for="radio1">Option 1</label>
                </span>
                <span class="radio-span">
                  <input type="radio" id="radio2" name="radio-group-1" />
                  <label for="radio2">Option 2</label>
                </span>
                <span class="radio-span">
                  <input type="radio" id="radio3" name="radio-group-1" />
                  <label for="radio3">Option 3</label>
                </span>
                <span class="radio-span">
                  <input type="radio" id="radio4" name="radio-group-1" />
                  <label for="radio4">Option 4</label>
                </span>
              </div>
            </div>
          </div>
          <div style="display: flex; justify-content: center; align-items: center;">
            <a href="submit">
                <button style="background-color: #077eed; color: white; padding-left: 15px; 
                padding-right: 15px; padding-top: 7px; padding-bottom: 7px; border-radius: 7px;
                border: none; cursor: pointer;">Submit</button>
                </a>
          </div>
        </div>
      </main>
    <script>
      function inputChecked() {
        const radioSpans = document.querySelectorAll(".radio-span");
        const checkboxSpans = document.querySelectorAll(".checkbox-span");

        radioSpans.forEach((radioSpan) => {
          const radioInput = radioSpan.querySelector('input[type="radio"]');
          const label = radioSpan.querySelector("label");

          radioSpan.addEventListener("click", () => {
            radioSpans.forEach((span) => {
              span.style.backgroundColor = "";
              span.style.border = "";
              const spanLabel = span.querySelector("label");
              spanLabel.classList.remove("selected");
            });

            radioSpan.style.backgroundColor = "rgba(80, 227, 194, 0.1)";
            radioSpan.style.border = "2px solid #50E3C2";
            label.classList.add("selected");

            radioInput.checked = true;
          });
        });

        checkboxSpans.forEach((checkboxSpan) => {
          const checkboxInput = checkboxSpan.querySelector(
            'input[type="checkbox"]'
          );
          const label = checkboxSpan.querySelector("label");

          checkboxSpan.addEventListener("click", () => {
            if (checkboxInput.checked) {
              checkboxSpan.style.backgroundColor = "rgba(80, 227, 194, 0.1)";
              checkboxSpan.style.border = "2px solid #50E3C2";
              label.classList.add("selected");
            } else {
              checkboxSpan.style.backgroundColor = "";
              checkboxSpan.style.border = "";
              label.classList.remove("selected");
            }
          });
        });
        /*check box js code end*/
      }

      inputChecked();


var now = new Date().getTime();
var countDownDate = now + 20 * 60 * 1000; 

var x = setInterval(function() {

    var now = new Date().getTime();

    var distance = countDownDate - now;

    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((distance % (1000 * 60)) / 1000);

    document.getElementById("countdown").innerHTML = minutes + "m " + seconds + "s ";

    if (distance < 0) {
        clearInterval(x);
        document.getElementById("countdown").innerHTML = "EXPIRED";
    }
}, 1000);

    </script>
  </body>
</html>
