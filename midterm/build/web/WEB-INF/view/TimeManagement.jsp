<%-- 
    Document   : TimeManagement
    Created on : May 7, 2024, 2:21:06 PM
    Author     : marxa
--%>

<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Time Tracker</title>
    <link rel="stylesheet" href="style.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script> <!-- Include Chart.js library -->
        <style>
        @import url('https://fonts.googleapis.com/css?family=Poppins:600&display=swap');

        body {
            font-family: 'Poppins', sans-serif;
            color: white;
            text-align: left;
            font-size: 20px;
            margin: 0;
            background-image: url('https://i.pinimg.com/originals/e2/48/d7/e248d76b9468b84ed63e5811e0b5180a.gif');
        }

        .pie_chart_content {
            background-image: url("https://i.pinimg.com/originals/e5/9e/4e/e59e4efc5dc53e4342a64adb8abccb75.gif");
            background-size: 97px auto;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 94%;
        }

        .row {
            display: flex;
            width: 100%;
        }

        .col-md-6 {
            display: flex;
            flex: 1;
        }

        .main_box h1 {
            padding: 10px;
            color: black;
            font-size: 20px;
        }

        .main_box {
            background-color: white;
            width: 60%;
            border-top-right-radius: 20px;
            border-bottom-right-radius: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 70px;
            margin-left: 8%;
        }

        .count_box {
            background-color: #182d6e;
            width: 31%;
            border-top-left-radius: 20px;
            border-bottom-left-radius: 20px;
            padding: 110px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            margin-left: 40%;
        }

        .chart-container {
            margin-left: 63%;
            width: 50vw;
            height: 50vh;
            max-width: 600px;
            max-height: 400px;
        }

        .total-input {
            background-color: #354660;
            text-align: center;
            border: none;
            color: white;
        }

        .form-control:disabled,
        .form-control[readonly] {
            background-color: #354660;
            opacity: 1;
        }

        .social-input {
            background-color: #2adece;
            border: none;
            color: white;
            text-align: center;
        }

        .studying-input {
            background-color: #dd3b79;
            border: none;
            color: white;
            text-align: center;
        }

        .chores-input {
            background-color: #ff7666;
            border: none;
            color: white;
            text-align: center;
        }

        .form-control:focus {
            background-color: transparent;
            color: white;
            border: none;
            text-align: center;
        }

        .result p {
            color: black;
            font-size: 15px;
        }

        .error {
            color: red;
            font-size: 15px;
            text-align: center;
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
    <a href='/midterm/AtonJavaButtons' class='back-button'>
        <img src="https://i.pinimg.com/564x/13/dc/4c/13dc4cc5ba93e8c2d1936c72e2ab685d.jpg" alt="Buttons"  width="50" height="50">
    </a>
     <section class="pie_chart_content">
        <div class="overlay">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="count_box">
                            <form method="post">
                                <div class="form-group">
                                    <label for="total-input">Total Number Of Hours You Spent In A Day</label>
                                    <input type="text" value="24 HRS" class="total-input form-control" readonly>
                                </div>
                                <div class="form-group">
                                    <label for="social-input">Social Media</label>
                                    <input type="number" name="socialmedia" id="social-input" class="social-input form-control" min="0" step="0.01">
                                </div>
                                <div class="form-group">
                                    <label for="studying-input">Studying</label>
                                    <input type="number" name="studying" id="studying-input" class="studying-input form-control" min="0" step="0.01">
                                </div>
                                <div class="form-group">
                                    <label for="chores-input">Chores</label>
                                    <input type="number" name="chores" id="chores-input" class="chores-input form-control" min="0" step="0.01">
                                </div>
                                <input type="submit" value="Calculate" class="form-control">
                            </form>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="main_box">
                            <h1>Time Tracker</h1>
                            <div class="chart-container">
                                <canvas id="mychart"></canvas>
                            </div>
                            <%
                                try {
                                    if (request.getParameter("socialmedia") != null && request.getParameter("studying") != null && request.getParameter("chores") != null) {
                                        double socialMediaHours = Double.parseDouble(request.getParameter("socialmedia"));
                                        double studyingHours = Double.parseDouble(request.getParameter("studying"));
                                        double choresHours = Double.parseDouble(request.getParameter("chores"));

                                        if (socialMediaHours < 0 || studyingHours < 0 || choresHours < 0) {
                                            throw new NumberFormatException("Negative values are not allowed.");
                                        }

                                        double totalHours = socialMediaHours + studyingHours + choresHours;

                                        double socialMediaPercentage = (socialMediaHours / totalHours) * 100;
                                        double studyingPercentage = (studyingHours / totalHours) * 100;
                                        double choresPercentage = (choresHours / totalHours) * 100;

                                        String[] labels = {"Social Media", "Studying", "Chores"};
                                        double[] data = {socialMediaHours, studyingHours, choresHours};
                            %>
                                        <script>
                                            document.addEventListener('DOMContentLoaded', function() {
                                                const ctx = document.getElementById('mychart').getContext('2d');
                                                new Chart(ctx, {
                                                    type: 'pie',
                                                    data: {
                                                        labels: <%= Arrays.toString(labels) %>,
                                                        datasets: [{
                                                            label: 'Number of Hours',
                                                            data: <%= Arrays.toString(data) %>,
                                                            backgroundColor: ['#2adece', '#dd3b79', '#ff7666'],
                                                            borderWidth: 1
                                                        }]
                                                    }
                                                });
                                            });
                                        </script>
                                        <div class="result">
                                            <p>Social Media: <%= String.format("%.2f%%", socialMediaPercentage) %> Studying: <%= String.format("%.2f%%", studyingPercentage) %> Chores: <%= String.format("%.2f%%", choresPercentage) %> </p>
                                           
                                        </div>
                            <%
                                    }
                                } catch (NumberFormatException e) {
                            %>
                                    <p class="error">Invalid input. Please enter non-negative numeric values for Social Media, Studying, and Chores.</p>
                            <%
                                }
                            %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<script>
        document.addEventListener('DOMContentLoaded', function() {
            const cases = document.querySelector('.social-input');
            const deaths = document.querySelector('.studying-input');
            const recovered = document.querySelector('.chores-input');

            const ctx = document.getElementById('mychart').getContext('2d');
            let mychart = new Chart(ctx, {
                type: 'pie',
                data: {
                    labels: ['Social Media', 'Studying', 'Chores'],
                    datasets: [{
                        label: 'Number of Hours',
                        data: [0, 0, 0],
                        backgroundColor: ['#2adece', '#dd3b79', '#ff7666'],
                        borderWidth: 1
                    }]
                }
            });

            const updateChartValue = (input, dataOrder) => {
                input.addEventListener('input', e => {
                    mychart.data.datasets[0].data[dataOrder] = parseInt(e.target.value) || 0;
                    mychart.update();
                });
            };

            updateChartValue(cases, 0);
            updateChartValue(deaths, 1);
            updateChartValue(recovered, 2);
        });
    document.getElementById('timeForm').addEventListener('submit', function(event) {
            event.preventDefault(); // Prevent the default form submission

            // Get form data
            const formData = new FormData(this);

            // Send form data via AJAX
            fetch('your_backend_script_url', {
                method: 'POST',
                body: formData
            })
            .then(response => response.text())
            .then(data => {
                // Update the result section with the response
                document.querySelector('.result').innerHTML = data;
            })
            .catch(error => {
                console.error('Error:', error);
            });
        });
    </script>
</body>
</html>