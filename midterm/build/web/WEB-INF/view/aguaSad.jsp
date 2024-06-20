<%-- 
    Document   : aguaSad
    Created on : May 18, 2024, 4:09:05 PM
    Author     : marxa
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Show Emoji</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background-image: url('https://i.pinimg.com/564x/b5/5e/ce/b55ece195037fe8f4535946f20e1573d.jpg');
            background-repeat: repeat;
        }

        h1 {
            color: black; /* Change the color to red */
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

        #imageContainer {
            display: none;
            margin-top: 20px;
            border: 2px solid #ddd;
            border-radius: 5px;
            overflow: hidden;
        }

        #imageContainer img {
            width: 100%;
            height: auto;
            display: block;
        }
        #emojiContainer {
            display: none;
            margin-top: 20px;
            border: 2px solid #ddd;
            border-radius: 5px;
            overflow: hidden;
            font-size: 50px; /* Increase the font size to make the emoji bigger */
        }
                    .back-button {
                position: absolute;
                top: 20px;
                right: 20px;
                z-index: 999;
            }
    </style>
    <script type="text/javascript">
        function showEmoji() {
            var emoji = "😢"; // Unicode representation of a sad emoji
            var emojiContainer = document.getElementById("emojiContainer");
            
            // Update the container with the emoji
            emojiContainer.textContent = emoji;

            // Display the emoji container
            emojiContainer.style.display = "block";
        }
    </script>
</head>
<body>
    <a href='/midterm/aguabuttons' class='back-button'>
            <img src="https://www.svgrepo.com/show/165906/left-arrow.svg" alt="Buttons" width="50" height="50">
        </a>
    <h1>Show Sad Emoji</h1>
    <button onclick="showEmoji()">Show Emoji</button>
    <div id="emojiContainer"></div>
</body>
</html>
