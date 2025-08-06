<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Feedback System</title>
   


    <style>
        body {
            font-family: Arial;
            text-align: center;
            margin-top: 100px;
            background-color: #f2f2f2;
        }
        h1 {
            font-size: 28px;
            color: #333;
        }
        .login-buttons {
            margin-top: 40px;
        }
        .login-buttons a {
            display: inline-block;
            padding: 12px 24px;
            font-size: 18px;
            margin: 10px;
            color: white;
            background-color: #007bff;
            text-decoration: none;
            border-radius: 8px;
        }
        .login-buttons a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <h1>Welcome to the Student Feedback System</h1>

    <div class="login-buttons">
        <a href="students_login.jsp">Student Login</a>
        <a href="faculty_login.jsp">Faculty Login</a>
    </div>

</body>
</html>
