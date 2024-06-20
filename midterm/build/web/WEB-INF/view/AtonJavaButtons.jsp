    <%-- 
    Document   : AtonJavaButtons
    Created on : Apr 27, 2024, 6:11:24 PM
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
            background-image: url('https://i.pinimg.com/originals/c2/8e/8b/c28e8b21c44f7a14f4a86077d15d23d8.gif');
        }
        
        h1, h2 {
            font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
            color: white;
            text-align: center;
        }

        .container {
            display: flex;
            justify-content: space-around;
            align-items: center;
            margin: 70px auto 0;
        }

        .border {
            height: 369px;
            width: 290px;
            background: transparent;
            border-radius: 10px;
            transition: border 1s;
            position: relative;
        }

        .border:hover {
            border: 3px solid white;
        }

        .card {
            height: 379px;
            width: 300px;
            background: black;
            border-radius: 10px;
            transition: background 0.8s;
            overflow: hidden;
            box-shadow: 0 70px 63px -60px #000000;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
        }

        .card0 {
            background: url('https://i.pinimg.com/736x/4b/da/f1/4bdaf138e4c8e15a1cc573769b4fc69a.jpg') center center no-repeat;
            background-size: 300px;
        }

        .card0:hover {
            background: url('https://i.pinimg.com/564x/d0/83/ea/d083eab301d8e7384d8ead5a38a60086.jpg') center no-repeat;
            background-size: 600px;
        }

        .card1 {
            background: url('https://i.pinimg.com/564x/28/ea/12/28ea1286556d0e9c1b6c87a3fe87d054.jpg') center center no-repeat;
            background-size: cover;
        }

        .card1:hover {
            background: url('https://i.pinimg.com/originals/cc/03/29/cc03295901bc7a4dc3d489b71b9d7c13.gif') center no-repeat;
            background-size: 600px;
        }

        .card2 {
            background: url('https://i.pinimg.com/564x/f8/9b/e4/f89be48b9df84efe4acdad8b1feb4cce.jpg') center center no-repeat;
            background-size: 300px;
        }

        .card2:hover {
            background: url('https://i.pinimg.com/564x/db/11/d2/db11d2090368b4b0655c50285c84d43a.jpg') center no-repeat;
            background-size: cover;
        }

        .card h2 {
            opacity: 0;
            transition: opacity 1s;
        }

        .card:hover h2 {
            opacity: 1;
        }

        .card .fa {
            opacity: 0;
            transition: opacity 1s;
        }

        .card:hover .fa {
            opacity: 1;
        }

        .fa {
            opacity: 1;
            transition: opacity 1s;
        }

        /* Style for anchor */
        .card a {
            text-decoration: none;
            color: inherit; /* Inherit the text color from parent */
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
    <a href='/midterm/aton' class='back-button'>
        <img src="https://i.pinimg.com/564x/e5/86/e0/e586e08a2427d96337ddc7fc5ef42ea9.jpg" alt="Buttons"  width="50" height="50">
    </a>
    <h1>Welcome To My JAVA Options</h1>
    <div class="container">
        <div class="card card0">
            <a href="/midterm/AtonGWA">
            <div class="border">
                    <h2>GWA Calculator</h2>
            </div>
            </a>
        </div>
        <div class="card card1">
            <a href="/midterm/TimeManagement">
            <div class="border">
                    <h2>Time Management</h2>
            </div>
            </a>
        </div>
        <div class="card card2">
            <a href="/midterm/GasStation">
            <div class="border">      
                    <h2>Gasoline Station</h2>
            </div>
            </a>
        </div>
    </div>
</body>
</html>
