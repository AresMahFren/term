<%-- 
    Document   : aguaPicme
    Created on : May 18, 2024, 4:08:45 PM
    Author     : marxa
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Display Image</title>
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
            height: 200vh;
            background-image: url('https://i.pinimg.com/736x/e6/e6/d6/e6e6d6362b0f23f4c7f9e65aaaea44ff.jpg');
            background-size: cover;
        }

        h1 {
            color: red;
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
                    .back-button {
                position: absolute;
                top: 20px;
                right: 20px;
                z-index: 999;
            }
    </style>
    <script type="text/javascript">
        function showImage() {
            var imagePath = "https://scontent.fmnl25-4.fna.fbcdn.net/v/t1.6435-9/119239979_969798646819594_8581433568182810014_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEkVHFS7oryua1poELexUYb82ADGolUxL3zYAMaiVTEvXUtmprlm6NXAok8ViZTP5MYP2slra_h9c_poJbmUjhq&_nc_ohc=fHwpQEGUutIQ7kNvgGfr71j&_nc_ht=scontent.fmnl25-4.fna&oh=00_AYBSCv8yuukTMqtpbE-2ad9O-hmg2W8tFcEfIFFxUStFbw&oe=6671364D"; // Relative path to the image
            var imageContainer = document.getElementById("imageContainer");
            var imageElement = document.getElementById("imageElement");
            
            // Update the src attribute to point to the correct image path
            imageElement.src = imagePath;

            // Check if the image exists
            imageElement.onerror = function() {
                alert("Image could not be found at specified location.");
                imageContainer.style.display = "none";
            };
            
            imageElement.onload = function() {
                imageContainer.style.display = "block";
            };
        }
    </script>
</head>
<body>
    <a href='/midterm/aguabuttons' class='back-button'>
            <img src="https://www.svgrepo.com/show/165906/left-arrow.svg" alt="Buttons" width="50" height="50">
        </a>
    <h1>Display Image</h1>
    <button onclick="showImage()">Show Image</button>
    <div id="imageContainer">
        <img id="imageElement" alt="Image">
    </div>
</body>
</html>
