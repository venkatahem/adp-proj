<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Welcome</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Otomanopee+One&display=swap"
      rel="stylesheet"
    />
    <script>
      //loader
      function loader_hide() {
        let element = document.getElementById("loader");
        element.style.display = "none";
      }
      function loader() {
        window.setTimeout(loader_hide, 1000);
      }
    </script>
    <style>
      * {
        top: 0px;
        right: 0px;
        bottom: 0px;
        left: 0px;
        margin: 0px;
        padding: 0px;
        font-family: "Otomanopee One", sans-serif;
      }
      body {
        /* background: linear-gradient(
          to right,
          rgb(243, 73, 243),
          rgba(48, 204, 243, 0.801)
        ); */
        background-color: black;
      }
      #content{
      margin-left:5%;
      margin-top:5%;
      }
      #logo {
        display: inline-block;
        width: 400px;
        height: 300px;
        margin: 0% 0% 0% 30%;
      }
      #dnt-btn {
        margin: 2% 0% 0% -30%;
        width: 100px;
      }
      #pre-don {
        margin-left: 100px;
      }
      #lout-btn {
        margin: 1% 0% 0% 44%;
      }
      .btn {
        padding: 5px;
        border-radius: 10px;
      }
      .btn:hover {
        background-color: aquamarine;
      }
      /*--------------- L O A D E R ----------------*/
      #loader {
        position: absolute;
        z-index: 25;
        background-color: #004c66;
        width: 100%;
        height: 100vh;
      }
      .container {
        position: absolute;
        width: 60px;
        margin: 20% 0% 0% 47%;
      }
      .dot {
        width: 10px;
        height: 10px;
        display: inline-block;
        border-radius: 50%;
      }
      .dot1 {
        background-color: #1abc9c;
        animation: jump-up 0.6s 0.1s linear infinite;
      }
      .dot2 {
        background-color: #ffd64a;
        animation: jump-up 0.6s 0.2s linear infinite;
      }
      .dot3 {
        background-color: #e067af;
        animation: jump-up 0.6s 0.3s linear infinite;
      }

      @keyframes jump-up {
        50% {
          transform: translate(0, 15px);
        }
      }
    </style>
  </head>
  <body onload="loader()">
  
  <%
 
 	response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");	
 
 	if(session.getAttribute("username")==null)
 	{
 		response.sendRedirect("login.jsp");
 	}
 %>
  <div id="content">
    <img src="logo3.png" alt="logo" id="logo" />
    <button onclick="location.href = 'donate.jsp';" id="dnt-btn" class="btn">
      Donate
    </button>
    <button id="pre-don" class="btn" onclick="location.href = 'pre_records.jsp';">My Donations</button>
    <form action="logout" method="post">
      <input type="submit" value="Logout" id="lout-btn" class="btn" />
    </form>
    </div>
    <div id="loader">
      <div class="container">
        <div class="dot dot1"></div>
        <div class="dot dot2"></div>
        <div class="dot dot3"></div>
      </div>
    </div>
  </body>
</html>
