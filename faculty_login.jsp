<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Faculty Login</title>
    <style>
        body {
            font-family: Arial;
            background-color: #fff3e0;
            text-align: center;
            padding-top: 100px;
        }
        .login-box {
            background-color: #fff;
            width: 350px;
            margin: auto;
            padding: 30px;
            box-shadow: 0px 0px 15px rgba(0,0,0,0.2);
            border-radius: 10px;
        }
        input {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border-radius: 6px;
            border: 1px solid #ccc;
        }
        button {
            width: 100%;
            padding: 12px;
            background-color: #6505d3;
            color: rgb(255, 255, 255);
            border: none;
            border-radius: 6px;
        }
    </style>
</head>
<body>
    <div class="login-box">
        <h2>Faculty Login</h2>
        <form action="FacultyLoginServlet" method="post">
            <input type="text" name="username" placeholder="Enter Faculty ID" required>
            <input type="password" name="password" placeholder="Enter Password" required>
            <button type="submit">Login</button>
        </form>
    </div>
</body>
</html>
