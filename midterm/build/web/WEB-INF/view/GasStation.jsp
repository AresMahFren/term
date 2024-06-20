<%-- 
    Document   : GasStation
    Created on : May 7, 2024, 2:41:59 PM
    Author     : marxa
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Gasoline Station</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            padding: 20px;
            background-color: #f4f4f4;
            background-image: url('https://i.pinimg.com/originals/a2/aa/31/a2aa3107b56571c2279df5be23688177.gif');
            background-size: 120% auto;
        }
        .container {
            max-width: 600px;
            margin: auto;
            background: #b7e8d8;
            padding: 20px;
            box-shadow: 0px 0px 10px 0px #000;
        }
        h1 {
            text-align: center;
        }
        label {
            display: block;
            margin: 10px 0 5px;
        }
        input[type="text"], select {
            width: 100%;
            padding: 8px;
            margin: 10px 0;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        .back-button {
            position: fixed;
            top: 20px;
            right: 20px;
            z-index: 999;
        }
        .back-button img {
            width: 50px;
            height: 50px;
        }
        .result {
            background-color: #e7f3fe;
            border-left: 6px solid #2196F3;
            padding: 10px;
            margin-top: 20px;
        }
        .error {
            background-color: #f8d7da;
            border-left: 6px solid #f5c6cb;
            padding: 10px;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <a href='/midterm/AtonJavaButtons' class='back-button'>
        <img src="https://i.pinimg.com/564x/13/dc/4c/13dc4cc5ba93e8c2d1936c72e2ab685d.jpg" alt="Buttons">
    </a>
    <div class="container">
        <h1>Gasoline Station</h1>
        <form method="post">
            <label for="payment">Payment:</label>
            <input type="text" id="payment" name="payment" value="<%= request.getParameter("payment") != null ? request.getParameter("payment") : "" %>"><br>
            <label for="fuelType">Select Fuel Type:</label>
            <select id="fuelType" name="fuelType">
                <option value="1" <%= "1".equals(request.getParameter("fuelType")) ? "selected" : "" %>>Gasoline</option>
                <option value="2" <%= "2".equals(request.getParameter("fuelType")) ? "selected" : "" %>>Platinum</option>
                <option value="3" <%= "3".equals(request.getParameter("fuelType")) ? "selected" : "" %>>Diesel</option>
            </select><br>
            <input type="submit" value="Convert">
        </form>

        <%
            try {
                if (request.getParameter("payment") != null && request.getParameter("fuelType") != null) {
                    double paymentAmount = Double.parseDouble(request.getParameter("payment"));
                    int selectedFuelType = Integer.parseInt(request.getParameter("fuelType"));

                    double gasLiters = 0;
                    switch (selectedFuelType) {
                        case 1: // Gasoline
                            gasLiters = paymentAmount / 55.35; // Gasoline cost per liter
                            break;
                        case 2: // Platinum
                            gasLiters = paymentAmount / 58.70; // Platinum cost per liter
                            break;
                        case 3: // Diesel
                            gasLiters = paymentAmount / 62.52; // Diesel cost per liter
                            break;
                        default:
                            break;
                    }
        %>
                    <div class="result">
                        <h2>Result:</h2>
                        <p>Gasoline Liters: <%= String.format("%.2f", gasLiters) %></p>
                    </div>
        <%
                }
            } catch (NumberFormatException e) {
        %>
                <div class="error">
                    <p>Invalid input. Please enter numeric values for Payment.</p>
                </div>
        <%
            }
        %>
    </div>
</body>
</html>
