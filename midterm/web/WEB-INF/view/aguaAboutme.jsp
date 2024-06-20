<%-- 
    Document   : aguaAboutme
    Created on : May 18, 2024, 4:08:21 PM
    Author     : marxa
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Computer Information</title>
    <script type="text/javascript">
        function showMessage() {
            var message = "Computer.\n";
            message += "\n";
            message += "I was drawn to the field due to my fascination with computer hardware and the desire to understand how various electronic components work together to create complex systems.\n";
            message += "A computer is a machine that can be programmed to carry out sequences of arithmetic or logical operations (computation) automatically.\n";
            message += "Modern digital electronic computers can perform generic sets of operations known as programs.\n";
            
            alert(message);
        }
    </script>
    <style>
         body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #e0f7fa, #80deea);
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
        }

        button {
            background-color: #007BFF;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #0056b3;
        }

        button:focus {
            outline: none;
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
    <a href='/midterm/aguabuttons' class='back-button'>
            <img src="https://www.svgrepo.com/show/165906/left-arrow.svg" alt="Buttons" width="50" height="50">
        </a>
    <h1>Welcome to the Computer Information Page</h1>
    <button onclick="showMessage()">Show Information</button>
</body>
</html>
