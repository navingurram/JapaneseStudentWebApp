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

    </style>
  </head>

  <body>
      <main>
        <div class="container">
            <div style="display: flex; justify-content: center; align-items: center;">
                <img src="uploadfiles/done.png" style="width: 300px;"/>
            </div>
            <h1 style="text-align: center;">Your Test Has Been Submitted</h1>
            <div style="display: flex; justify-content: center; align-items: center; margin-top: 30px;">
                <a href="testExam"><button style=" background-color: #077eed; color: white; padding-left: 15px; 
                    padding-right: 15px; padding-top: 7px; padding-bottom: 7px; border-radius: 7px;
                    border: none; cursor: pointer;">Go Back To Dashboard</button></a>
            </div>
        </div>
      </main>
  </body>
</html>
