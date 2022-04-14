<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Donate</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Otomanopee+One&display=swap"
      rel="stylesheet"
    />
    <script>
      let call = 0;
      function add() {
        call++;
        if (call === 1) {
          let ele1 = document.getElementById("item2");
          let ele2 = document.getElementById("quan2");
          let ele3 = document.getElementById("li2");
          let ele4 = document.getElementById("lq2");
          let ele5 = document.getElementById("i2br1");
          let ele6 = document.getElementById("i2br2");
          ele1.style.display = "inline-block";
          ele2.style.display = "inline-block";
          ele3.style.display = "inline-block";
          ele4.style.display = "inline-block";
          ele5.style.display = "block";
          ele6.style.display = "block";
        } else if (call === 2) {
          let ele1 = document.getElementById("item3");
          let ele2 = document.getElementById("quan3");
          let ele3 = document.getElementById("li3");
          let ele4 = document.getElementById("lq3");
          let ele5 = document.getElementsByClassName("it3");
          ele1.style.display = "inline-block";
          ele2.style.display = "inline-block";
          ele3.style.display = "inline-block";
          ele4.style.display = "inline-block";
          ele5[0].style.display = "block";
          ele5[1].style.display = "block";
        } else if (call === 3) {
          let ele1 = document.getElementById("item4");
          let ele2 = document.getElementById("quan4");
          let ele3 = document.getElementById("li4");
          let ele4 = document.getElementById("lq4");
          let ele5 = document.getElementsByClassName("it4");
          ele1.style.display = "inline-block";
          ele2.style.display = "inline-block";
          ele3.style.display = "inline-block";
          ele4.style.display = "inline-block";
          ele5[0].style.display = "inline-block";
          ele5[1].style.display = "inline-block";
        } else if (call === 4) {
          let ele1 = document.getElementById("item5");
          let ele2 = document.getElementById("quan5");
          let ele3 = document.getElementById("li5");
          let ele4 = document.getElementById("lq5");
          let ele5 = document.getElementById("msg");
          let ele6 = document.getElementById("btn");
          ele1.style.display = "inline-block";
          ele2.style.display = "inline-block";
          ele3.style.display = "inline-block";
          ele4.style.display = "inline-block";
          ele6.style.display = "none";
          ele5.innerHTML =
            "<p><font color = red>(<sup>**</sup>You can add a max of 5 items per user<sup>**</sup>)</font></p>";
        }
      }
      //loader
      function loader_hide()
      {
        let element = document.getElementById("loader");
        element.style.display = "none"
      }
      function loader()
      {
        window.setTimeout(loader_hide,2000)
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
      #one::before {
        content: "";

        /*---------------  BACKGROUND PICTURE  ----------------*/

        /* background: url("https://www.leaf.ca/wp-content/uploads/elementor/thumbs/iStock-1163228217-scaled-oxcp7dlxlvswkph8bb90c293mgxqktrf4yozycc460.jpg")
          no-repeat center center/cover; */

        /*--------------- GRADIENT ----------------*/

        background: linear-gradient(to right, pink, aqua);
        width: 100%;
        height: 100vh;
        position: absolute;
        z-index: -1;
        opacity: 0.4;
      }
      #one {
        width: 100%;
        height: 100vh;
      }
      #donate-img {
        position: absolute;
        z-index: 5;
        display: block;
        margin: -3% 0% 0% 9%;
        width: 300px;
        height: 180px;
      }
      #txt {
        position: absolute;
        z-index: 2;
        display: block;
        margin: 8% 0% 0% 3%;
        font-size: 1.5rem;
      }
      #donoform {
        position: absolute;
        z-index: 2;
        margin: 12% 0% 0% 3%;
      }
      label {
        display: inline-block;
        width: 100px;
      }
      .in {
        width: 150px;
        border-radius: 10px;
        padding: 1px;
      }
      .quan {
        width: 30px;
        border-radius: 10px;
        padding: 1px;
      }
      #btn {
        width: 70px;
        border-radius: 10px;
        padding: 1px;
        margin-left: 2px;
      }
      #btn:hover {
        background: black;
        color: white;
      }
      #pic {
        position: absolute;
        z-index: 1;
        /*-------------  SIDE PICTURE  -------------*/
        /*---------- IMAGE - 1 ---------------------*/
        background: url("https://mypage114041763.files.wordpress.com/2021/07/donate-4.jpg?w=1024")
          no-repeat center center/cover;
        /*---------- IMAGE - 2 ---------------------*/
        background: url("https://mypage114041763.files.wordpress.com/2021/07/donate-2.jpg?w=1024")
          no-repeat center center/cover;
        /*---------- IMAGE - 3 ---------------------*/
        /* background: url("https://mypage114041763.files.wordpress.com/2021/07/donate-6.jpg?w=1024")
          no-repeat center center/cover; */
        width: 50%;
        height: 100%;
        margin: 0% 0% 0% 50%;
        border: 0px solid red;
        border-radius: 150px 0px 0px 150px;
        opacity: 0.8;
      }
      #logo{
        width: 100px;
        height: 100px;
        margin: 0% 0% 0% 2.5%;
      }
      #donate-btn {
        width: 70px;
        border-radius: 10px;
        padding: 5px;
        margin-top: 1%;
        margin-left: 2px;
      }
      #donate-btn:hover {
        background: black;
        color: white;
      }
      sup {
        color: red;
      }
       #back-btn{
        width: 100px;
        border-radius: 10px;
        padding: 5px;
        margin-left: 2px;
        margin-top:5px;
      }
      #back-btn:hover{
        background: black;
        color: white;
      }
       /*--------------- L O A D E R ----------------*/
      #loader {
        position: absolute;
        z-index: 99;
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
  
 
    <div id="main" class="divsion">
      <div id="one">
        <img
          src="https://mypage114041763.files.wordpress.com/2021/07/donate-no-back.png?w=1024"
          alt="donate"
          id="donate-img"
        />
        <img src="logo3.png" alt="logo" id="logo">
        <h4 id="txt">
          Your Small Contribution Makes Big Change &#x1F496; &#x1F496;
        </h4>
        <div id="donoform">
          <form action="donateForm.jsp" method="POST">
          <h2>Welcome.... ${username}</h2>
       <br /><br />
            <label for="item1">Item<sup>*</sup>:</label>
            <input
              type="text"
              name="item1"
              id="item1"
              class="in"
              placeholder="Ex:shirt/pant"
              required
            /><label for="quan1"> & Qunatity:</label
            ><input
              type="number"
              name="quan1"
              id="quan1"
              class="quan"
              max="10"
              min="1"
              required
            /><input
              type="button"
              onclick="add()"
              value="Add Item"
              id="btn"
            /><br /><br />
            <!-- ----------------------------- -->
            <label for="item2" id="li2" style="display: none">Item:</label>
            <input
              type="text"
              name="item2"
              id="item2"
              class="in"
              placeholder="Ex:shirt/pant"
              style="display: none"
            /><label for="quan2" id="lq2" style="display: none">
              & Qunatity:</label
            ><input
              type="number"
              name="quan2"
              id="quan2"
              class="quan"
              max="10"
              min="1"
              style="display: none"
            /><br id="i2br1" style="display: none" /><br
              id="i2br2"
              style="display: none"
            />
            <!-- ----------------------------- -->
            <label for="item3" id="li3" style="display: none">Item:</label>
            <input
              type="text"
              name="item3"
              id="item3"
              class="in"
              placeholder="Ex:shirt/pant"
              style="display: none"
            /><label for="quan3" id="lq3" style="display: none">
              & Qunatity:</label
            ><input
              type="number"
              name="quan3"
              id="quan3"
              class="quan"
              max="10"
              min="1"
              style="display: none"
            /><br class="it3" style="display: none" /><br
              class="it3"
              style="display: none"
            />
            <!-- ----------------------------- -->
            <label for="item4" id="li4" style="display: none">Item:</label>
            <input
              type="text"
              name="item4"
              id="item4"
              class="in"
              placeholder="Ex:shirt/pant"
              style="display: none"
            /><label for="quan4" id="lq4" style="display: none">
              & Qunatity:</label
            ><input
              type="number"
              name="quan4"
              id="quan4"
              class="quan"
              max="10"
              min="1"
              style="display: none"
            /><br class="it4" style="display: none" /><br
              class="it4"
              style="display: none"
            />
            <!-- ----------------------------- -->
            <label for="item5" id="li5" style="display: none">Item:</label>
            <input
              type="text"
              name="item5"
              id="item5"
              class="in"
              placeholder="Ex:shirt/pant"
              style="display: none"
            /><label for="quan5" id="lq5" style="display: none">
              & Qunatity:</label
            ><input
              type="number"
              name="quan5"
              id="quan5"
              class="quan"
              max="10"
              min="1"
              style="display: none"
            /><br /><span id="msg"></span>
            <button type="submit" id="donate-btn">Donate</button>
          </form>
          <button onclick="location.href = 'welcome.jsp';" id="back-btn">Go Back</button>
        </div>
        <div id="pic"></div>
      </div>
      <div id="two"></div>
      <div id="loader">
        <div class="container">
          <div class="dot dot1"></div>
          <div class="dot dot2"></div>
          <div class="dot dot3"></div>
        </div>
    </div>
  </body>
</html>
