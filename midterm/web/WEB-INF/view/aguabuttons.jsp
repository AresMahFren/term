<%-- 
    Document   : aguabuttons
    Created on : May 18, 2024, 2:36:30 PM
    Author     : marxa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
                background-image: url('https://i.pinimg.com/originals/93/82/83/938283d53be976836c7bbcbbed41781d.gif');
                background-size: cover;
                display: flex;
                flex-direction: row; /* Change from column to row */
                justify-content: center; /* Center horizontally */
                align-items: center;
                margin: 0;
                padding: 0;
            }
            h1 {
                font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
                color: white;
                text-align: center;
                position: absolute;
                top: 20px;
            }
            .container {
  height: 100vh;
  width: 100vw;
  max-height: 800px;
  max-width: 1280px;
  min-height: 600px;
  min-width: 1000px;
  display: flex;
  justify-content: space-around;
  align-items: center;
  margin: 0 auto;
}

.border {
  height: 369px; /* Adjust border height */
  width: 290px; /* Adjust border width */
  background: transparent;
  border-radius: 10px;
  transition: none;
  position: relative;
}

.border::before {
  content: '';
  position: absolute;
  z-index: -2;
  left: -50%;
  top: -50%;
  width: 200%;
  height: 200%;
  background-color: #399953;
  background-repeat: no-repeat;
  background-size: 50% 50%, 50% 50%;
  background-position: 0 0, 100% 0, 100% 100%, 0 100%;
  background-image: linear-gradient(#399953, #399953), linear-gradient(#fbb300, #fbb300), linear-gradient(#d53e33, #d53e33), linear-gradient(#377af5, #377af5);
  animation: rotate 4s linear infinite;
}

.border::after {
  content: '';
  position: absolute;
  z-index: -1;
  left: 6px;
  top: 6px;
  width: calc(100% - 12px);
  height: calc(100% - 12px);
  background: white;
  border-radius: 5px;
}

.border:hover {
  border: 3px solid; /* Add a solid border on hover */
  border-image: linear-gradient(to right, #399953, #fbb300, #d53e33, #377af5) 1; /* Use the specified colors for the border */
}

*, *::before, *::after {
  box-sizing: border-box;
}

@keyframes rotate {
  100% {
    transform: rotate(1turn);
  }
}

.card {
  height: 379px;
  width: 300px;
  background: grey;
  border-radius: 10px;
  transition: background 0.8s;
  overflow: hidden;
  background: black;
  box-shadow: 0 70px 63px -60px blue;
  display: flex;
  justify-content: center;
  align-items: center;
  position: relative;
}

.card0,
.card1,
.card2 {
  background-size: 300px;
}

.card0 {
  background-image: url('https://i.pinimg.com/564x/75/87/df/7587df77ef521cf98057d0028ee983f1.jpg');
}

.card1 {
  background-image: url('https://i.pinimg.com/564x/13/ba/9e/13ba9e544db0cb948a225461fb01c60e.jpg');
}

.card2 {
  background-image: url('https://i.pinimg.com/564x/de/f0/89/def0892fb114c3a6facc04780d945b3f.jpg');
}

.card:hover h2 {
  opacity: 1;
}

h2 {
  font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
  color: white;
  margin: 20px;
  opacity: 0;
  transition: opacity 1s;
}

            .rainbow-text {
                font-family: Trebuchet MS, Helvetica, sans-serif;
                font-weight: bold;
                font-size: 50px;
                text-shadow: #A3A3A3 1px 1px 0px;
                margin-bottom: 20px;
                position: absolute;
                top: 20px;
                width: 100%;
                text-align: center;
            }
            .rainbow-text .block-line > span {
                display: inline-block;
            }
            .back-button {
                position: absolute;
                top: 20px;
                right: 20px;
                z-index: 999;
            }
              
        </style>
    </head>
    <body>
        <a href='/midterm/aguaviva' class='back-button'>
            <img src="https://www.svgrepo.com/show/165906/left-arrow.svg" alt="Buttons" width="50" height="50">
        </a>
        <div class="rainbow-text">
            <span class="block-line">
                <span><span style="color:#80ed12;">T</span><span style="color:#A5D604;">H</span><span style="color:#C7B601;">I</span><span style="color:#E39209;">S&nbsp;</span></span>
                <span><span style="color:#F66C1C;">I</span><span style="color:#FE4838;">S&nbsp;</span></span>
                <span><span style="color:#FB295B;">M</span><span style="color:#ED1180;">Y&nbsp;</span></span>
                <span><span style="color:#D504A6;">B</span><span style="color:#B601C8;">U</span><span style="color:#910AE3;">T</span><span style="color:#6B1DF6;">T</span><span style="color:#4739FE;">O</span><span style="color:#285BFB;">N</span><span style="color:#1181ED;">S</span></span>
            </span>
        </div>
      <div class="container">
  <div class="card card0">
      <a href="/midterm/aguaAboutme">
    <div class="border">
      <h2>Why CompE?</h2>
    </div>
      </a>    
  </div>
  <div class="card card1">
      <a href="/midterm/aguaPicme">
    <div class="border">
      <h2>This Is Me</h2>
    </div>
      </a>
  </div>
  <div class="card card2">
      <a href="/midterm/aguaSad">
    <div class="border">
      <h2>Sad Emoji?</h2>
    </div>
      </a> 
  </div>
</div>
    </body>
</html>

