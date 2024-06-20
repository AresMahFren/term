<%-- 
    Document   : aguaviva
    Created on : Apr 20, 2024, 4:02:12 PM
    Author     : marxa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       <style>
            body{
                min-height: 90vh;
                background-color: #f16528;
                background-size: cover;
                background-repeat: no-repeat;
                background-position: center;
                display: flex;
                flex-direction: row-reverse;
                justify-content: center;
                align-items: center;
                width: 100vw;
                height: 100vh;
            }
            h1{
                font-size: 55px; 
                font-family: 'Bahnschrift SemiBold';
                font-style: italic; 
                text-align: center;
                color: black;
            }
            p{
                font-size: 30px; 
                font-family: 'Bahnschrift SemiBold';
                font-style: italic; 
                text-align: center;
                color: white; 
            }
       


            :root {
  font-size: 10px;
  --delay: .5s;
  --timing: 1s;
}
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  -ms-box-sizing: border-box;
}
.container {
  position: relative;
  z-index: 1;
  text-align: center;
  margin-bottom: 50px;
}

.container h1, .container p {
  position: relative;
  z-index: 1;
}

.box-outer {
  overflow: hidden;
  display: inline-block;
  margin: 10rem;
  width: 30rem; /* Adjust box width as needed */
  height: 30rem; /* Adjust box height as needed */
  margin-top: 30px;
  margin-bottom: 50px;
}
.main_box img {
  width: 100%;
  height: 100%;
  object-fit: cover; /* Maintain aspect ratio and cover the entire box */
}
.main_box {
  width: 100%;
  height: 100%;
  position: relative;
  background: #f34c4c;
  border: 0.5rem solid #000;
}

.bar {
  position: absolute;
  width: 5rem;
  height: 0.5rem;
  background: #fff;
  transition: all var(--timing) linear;
  animation-duration: var(--timing);
  animation-fill-mode: both;
  animation-iteration-count: infinite;
}

.bar.delay {
  animation-delay: var(--delay);
}

.top {
  top: -0.5rem;
  left: -0.5rem;
}

.right {
  top: calc(50% - 0.25rem);
  right: -2.8rem;
  transform: rotate(90deg);
}

.bottom {
  bottom: -0.5rem;
  left: -0.5rem;
}

.left {
  top: calc(50% - 0.25rem);
  left: -2.8rem;
  transform: rotate(90deg);
}
@-webkit-keyframes h-move {
  0% {
    left: -0.5rem;
  }
  100% {
    left: 20rem;
  }
}
@keyframes h-move {
  0% {
    left: -0.5rem;
  }
  100% {
    left: calc(100% + 0.5rem);
  }
}

.top,
.bottom {
  animation: h-move var(--timing) infinite;
}@-webkit-keyframes v-move {
  0% {
    top: -0.5rem;
  }
  100% {
    top: 22.8rem;
  }
}
@keyframes v-move {
  0% {
    top: -0.5rem;
  }
  100% {
    top: 22.8rem;
  }
}
.right,
.left {
  -webkit-animation-name: v-move;
  animation-name: v-move;
}
    .back-button {
      position: fixed;
      top: 20px;
      right: 20px;
      z-index: 999; 
    }

            </style>
    </head>
    <body>
    <a href='/midterm/main' class='back-button'>
        <img src="https://www.svgrepo.com/show/165906/left-arrow.svg" alt="Buttons"  width="50" height="50">
    </a>
     <div class="container">
  <h1>Long Time No See Sir Aguaviva</h1>
  <p>Ipa Kita Mo Kung Sino Ka Sir</p>
  <div class="box-outer">
    <div class="main_box">
      <div class="bar top"></div>
      <div class="bar right"></div>
      <div class="bar bottom"></div>
      <div class="bar left"></div>
      <a href=" https://aresmahfren.github.io/alexis/">
        <img src="https://i.pinimg.com/564x/0c/a4/6a/0ca46a03bd9655b67886b09a2b14833d.jpg" alt="HTML">
      </a>
    </div>
  </div>

  <div class="box-outer">
    <div class="main_box">
      <div class="bar top"></div>
      <div class="bar right"></div>
      <div class="bar bottom"></div>
      <div class="bar left"></div>
      <a href="/midterm/aguabuttons">
        <img src="https://i.pinimg.com/564x/a6/97/ae/a697ae61246c0e1825a600c3f5127aa1.jpg" alt="JAVA">
      </a>
    </div>
  </div>
</div>
        

    </body>
</html>
