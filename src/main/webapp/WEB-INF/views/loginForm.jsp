<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
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

        .login-options {
            text-align: center;
            margin-bottom: 20px;
        }

        .login-google {
            display: inline-block;
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border-radius: 4px;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        .login-google:hover {
            background-color: #0056b3;
        }

        .or-text {
            text-align: center;
            font-weight: bold;
        }

        .form-container {
            max-width: 300px;
            margin: 0 auto;
            margin-top: 15px;
            border: 1px solid #007bff;
            padding: 20px;
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

        .error-message {
            color: red;
            font-size: 14px;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <div class="header">
            <h1>Login Form</h1>
        </div>
        <div class="login-options">
            <a href="/oauth2/authorization/google" class="login-google">Login with Google</a>
        </div>
        <div class="or-text">OR</div>
        <div class="form-container">
            <form:form action="/api/v1/processLogin" modelAttribute="loginForm" method="post">
                <div class="form-group">
                <div class="error-message">${error}</div>
                    <label for="username">Username</label>
                    <form:input path="username" id="username" placeholder="Enter your username" required="true" />
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <form:input path="password" id="password" type="password" placeholder="Enter your password" required="true" />
                </div>

                <input type="submit" value="Login" class="submit-button" />
            </form:form>
        </div>
    </div>
</body>
</html>
