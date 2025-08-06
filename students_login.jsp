<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Login</title>
    <style>
        body {
            font-family: Arial;
            background-color: #e6f2ff;
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
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 6px;
        }
    </style>
</head>
<body>
    <div class="login-box">
        <h2>Student Login</h2>
        <form action="StudentLoginServlet" method="post">
            <input type="text" name="username" placeholder="Enter Student ID" required>
            <input type="password" name="password" placeholder="Enter Password" required>
            <button type="submit">Login</button>
        </form>
    </div>
</body>
</html>
