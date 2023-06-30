<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register Form</title>
    <style>
        /* Add your custom CSS styles here */
        body {
            font-family: Arial, sans-serif;
            background-image:url('https://cdn.wallpapersafari.com/60/76/tLqdPj.jpg');
            background-size: cover;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .login-container {
            background-color: #f5f5f5;
            max-width: 400px;
            padding: 40px;
            border-radius: 5px;
        }

        .header {
            text-align: center;
            margin-bottom: 20px;
        }

        h1 {
            color: #333;
            margin: 0;
        }

        .form-container {
            max-width: 300px;
            margin: 0 auto;
        }

        .form-group {
            margin-bottom: 10px;
        }

        .form-group label {
            display: block;
            margin-bottom: 10px;
            margin-top: 30px;
            font-weight: bold;
        }

        .form-group input {
            width: 90%;
            padding: 10px;
            font-size: 14px;
        }

        .or-text {
            text-align: center;
            font-weight: normal;
            margin-top: 20px;

        }

        .submit-button {
            display: block;
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
            margin: 20px auto 0;
            transition: background-color 0.3s;
        }

        .submit-button:hover {
            background-color: #0056b3;
        }

        .button-container {
            text-align: center;
            margin-bottom: 20px;
        }

        .welcome-button {
            display: inline-block;
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border-radius: 4px;
            text-decoration: none;
            transition: background-color 0.3s;
            margin: 10px;
            cursor: pointer;
        }

        .welcome-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <div class="header">
            <h1>Registration Form</h1>
        </div>
        <div class="form-container">
        <form:form action="/api/v1/processRegister" method="post" modelAttribute="user">

            <div class="or-text">New User ? Register Here</div>
            <div class="form-group">
                <label for="username">Username</label>
                <form:input path="username" id="username" class="action-button" placeholder="Enter Username" required="true" />

            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <form:password path="password" id="password" class="action-button" placeholder="Enter Password" required="true" />
            </div>

            <input type="submit" value="Register" class="submit-button" />
        </form:form>
        <div class="or-text">Already Have an Account ? Login Here</div>
        <div class="button-container">
        <a href="/api/v1/login?role=user" class="welcome-button">Login</a>
        </div>

    </div>
</body>
</html>
