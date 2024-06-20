<%-- 
    Document   : AtonGWA
    Created on : Apr 27, 2024, 6:26:59 PM
    Author     : marxa
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Grade Calculator</title>
    <style>
        body {
            background-position: center;  
        }
        h1{
            font-family: Courier;
            font-size: 40px;
            text-align: center;
            color: white;
        }
        p{
            font-family: Courier;
            text-align: center;
            color: white;
            margin-top: 50px;
            font-weight: bold;
            font-size: 25px;
        }
        table {
            width: 80%;
            border-collapse: collapse;
            margin: 70px auto 0;
        }
        th, td {
            padding: 8px;
            text-align: left;
            border: 1px solid white;
            color: white;
            padding: 12px;
            font-size: 20px;
        }
        th {
            background-color: transparent;
            font-family: Courier;
        }
        td {
            background-color: rgba(0, 0, 0, 0.3);
            text-align: center;
            font-family: Courier;
        }
        form {
            margin-bottom: 20px;
        }
        input[type="text"], input[type="submit"] {
            background-color: rgba(255, 255, 255, 0.3);
            font-family: Courier;
            border: none;
            padding: 8px;
            color: white;
            text-align: center;
            width: 90%;
        }
        input[type="submit"] {
            font-family: Courier;
            cursor: pointer;
            margin-left: 15px;
        }
        /*slide show*/
        body, html {
    margin: 0;
    padding: 0;
    height: 100%;
    overflow: hidden;
}

.slideshow-container {
    position: relative;
    width: 100%;
    height: 100%;
    overflow: hidden;
}

.background-img {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-size: cover;
    animation: slideshow 10s infinite; /* Adjust timing here */
}
.weighted-average {
    margin-right: 20px; /* Adjust the right margin for spacing */
}
.remark {
    margin-left: 20px; /* Adjust the left margin for spacing */
}
.back-button {
      position: fixed;
      top: 20px;
      right: 20px;
      z-index: 999; 
    }

@keyframes slideshow {
    0% { background-image: url('https://i.pinimg.com/564x/90/95/39/909539aead1da687609a87ec62d3ae1d.jpg');background-size: 100% auto; } /* Adjust image URLs */
    16.66% { background-image: url('https://i.pinimg.com/564x/9b/95/9e/9b959eee09021a7183fae972826c8b34.jpg');background-size: 100% auto; } /* Adjust image URLs */
    33.33% { background-image: url('https://i.pinimg.com/564x/97/70/ca/9770ca6cd070b7000f24976be56652d6.jpg');background-size: 100% auto; } /* Adjust image URLs */
    50% { background-image: url('https://i.pinimg.com/564x/d5/f4/28/d5f428cd334ea58b05a6da40a3520610.jpg');background-size: 100% auto; } /* Adjust image URLs */
    66.66% { background-image: url('https://i.pinimg.com/564x/24/30/f0/2430f0496b5753ce53e420bd9a3d0559.jpg');background-size: 100% auto; } /* Adjust image URLs */
    83.33% { background-image: url('https://i.pinimg.com/564x/41/64/09/4164095739cb22d0cb254b0ac5d17049.jpg');background-size: 100% auto; }
    100%, 0% { background-image: url('https://i.pinimg.com/564x/90/95/39/909539aead1da687609a87ec62d3ae1d.jpg');background-size: 100% auto; }
}

    </style>
</head>
 
<body>
    <a href='/midterm/AtonJavaButtons' class='back-button'>
        <img src="https://i.pinimg.com/564x/13/dc/4c/13dc4cc5ba93e8c2d1936c72e2ab685d.jpg" alt="Buttons"  width="50" height="50">
    </a>
     <div class="slideshow-container">
        <div class="background-img">
    <form method="post">
        <table>
            <tr>
                <th colspan="2"><h1>Grade Calculator</h1></th> <!-- Use colspan to span across both columns -->
            </tr>
             <tr>
                <th><label for="Semester">Semester</label></th>
                <td>Scores</td>
            </tr>
            <tr>
                <th><label for="prelim">Prelim:</label></th>
                <td><input type="text" id="prelim" name="prelim"></td>
            </tr>
            <tr>
                <th><label for="midterm">Midterm:</label></th>
                <td><input type="text" id="midterm" name="midterm"></td>
            </tr>
            <tr>
                <th><label for="finals">Finals:</label></th>
                <td><input type="text" id="finals" name="finals"></td>
            </tr>
            <tr>
                <th><input type="submit" value="Calculate"></th>
    
    <% 
        try {
            if (request.getParameter("prelim") != null && request.getParameter("midterm") != null && request.getParameter("finals") != null) {
                float prelim = Float.parseFloat(request.getParameter("prelim"));
                float midterm = Float.parseFloat(request.getParameter("midterm"));
                float finals = Float.parseFloat(request.getParameter("finals"));

                float weightedAverage = (prelim * 0.33f) + (midterm * 0.33f) + (finals * 0.33f);

                String remark = "";
                if (weightedAverage >= 95.0) {
                    remark = "1.0 - Excellent";
                } else if (weightedAverage >= 94.0) {
                    remark = "1.1";
                } else if (weightedAverage >= 93.0) {
                    remark = "1.2";
                } else if (weightedAverage >= 92.0) {
                    remark = "1.3";
                } else if (weightedAverage >= 91.0) {
                    remark = "1.4";
                } else if (weightedAverage >= 90.0) {
                    remark = "1.5";
                } else if (weightedAverage >= 89.0) {
                    remark = "1.6";
                } else if (weightedAverage >= 88.0) {
                    remark = "1.7";
                } else if (weightedAverage >= 87.0) {
                    remark = "1.8";
                } else if (weightedAverage >= 86.0) {
                    remark = "1.9";
                } else if (weightedAverage >= 85.0) {
                    remark = "2.0";
                } else if (weightedAverage >= 84.0) {
                    remark = "2.1";
                } else if (weightedAverage >= 83.0) {
                    remark = "2.2";
                } else if (weightedAverage >= 82.0) {
                    remark = "2.3";
                } else if (weightedAverage >= 81.0) {
                    remark = "2.4";
                } else if (weightedAverage >= 80.0) {
                    remark = "2.5";
                } else if (weightedAverage >= 79.0) {
                    remark = "2.6";
                } else if (weightedAverage >= 78.0) {
                    remark = "2.7";
                } else if (weightedAverage >= 77.0) {
                    remark = "2.8";
                } else if (weightedAverage >= 76.0) {
                    remark = "2.9";
                } else if (weightedAverage >= 75.0) {
                    remark = "3.0";
                } else {
                    remark = "5.0 - Failure";
                }
    %>
      <td>Weighted Average: <%= String.format("%.2f", weightedAverage) %> Remark: <%= remark %></td>
            </tr>
        </table>
    </form>
    <% 
            } else {
                out.println("<p>Invalid input. Please enter numeric values for Prelim, Midterm, and Final.</p>");
            }
        } catch (NumberFormatException e) {
            out.println("<p>Invalid input. Please enter numeric values for Prelim, Midterm, and Final.</p>");
        }
    %>
        </div>
     </div>
</body>
</html>
