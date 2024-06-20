<%-- 
    Document   : web
    Created on : Apr 20, 2024, 2:41:19 PM
    Author     : marxa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login Form</title>
        <style>
            *{
                margin: 0;
                padding: 0;
                font-family: Arial, Helvetica, sans-serif;
            }
            section{
                display: flex;
                justify-content: center;
                align-items: center;
                min-height: 100vh;
                width: 100%;
                background-image: url('https://i.pinimg.com/originals/14/10/f2/1410f2eb7fa784be79d33df63ded017f.gif');
                background-size: cover;
                background-repeat: no-repeat;
                background-position: center;
            }
            .main-form{
                position: relative;
                width: 450px;
                height: 500px;
                display:flex;
                justify-content: center;
                align-items: center;
                border: 2px solid white;
                border-radius: 35px;
            }
            h2{
                font-size: 2.1em;
                color: white;
                text-align: center;
            }
            .input1{
                position: relative;
                margin: 30px 0;
                width: 320px;
                border-bottom: 2px solid white;
            }
            .input1 label{
                position: absolute;
                top: 20%;
                left: 5px;
                transform: translateY(-50%);
                color: white;
                font-size: 1em;
                pointer-events: none;
                transition: 0.5s;
                height: 45px;
            }
            input:focus ~ label,
            input:valid ~ label{
                top: -20px;
            }
            .input1 input{
                width: 100%;
                height: 60%;
                background: transparent;
                border: none;
                outline: none;
                font-size: 1em;
                padding: 0 38px 0 6px;
                color: white;
            }
            button{
                width: 100%;
                height: 45%;
                background-color: transparent;
                border: none;
                outline: none;
                cursor: pointer;
                font-size: 25px;
                font-weight: 700;
                border: 25px;
            }
        </style>
    </head>
    <body>
        <section>
        <div>
            <div class="main-form">
            <div class="form-content">
            <form action="">
                <h2>Welcome Master</h2>
                <div class="input1">
                    <label>Username</label>
                    <input type="username" name="username" required>      
                </div> 
                <div class="input1">
                    <label>Password</label>
                    <input type="password" name="password" required>
                </div>
                
                <button type="submit">Login</button>
            </form>
        </div>
     </div> 
        
        <%@page import="java.io.*,java.util.*,javax.servlet.*,javax.servlet.http.*"%>
        <%
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            
            if ("aton".equals(username) && "123".equals(password)) {
                
                response.sendRedirect("/midterm/aton");
            } else if ("aguaviva".equals(username) && "123".equals(password)) {
                
                response.sendRedirect("/midterm/aguaviva");
            } else if (username != null && password != null) {
                
                response.sendRedirect("/midterm/main");
            }
        %>
        </section>
    </body>
</html>
