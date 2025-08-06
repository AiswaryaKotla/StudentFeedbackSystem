<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Feedback Overview</title>
    <style>
        body {
            font-family: Arial;
            background-color: #f2f2f2;
            padding: 30px;
        }
        h1 {
            text-align: center;
            margin-bottom: 40px;
        }
        h2 {
            text-align: center;
            color: #007bff;
            margin-top: 50px;
        }
        table {
            width: 70%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0 0 8px rgba(0,0,0,0.1);
        }
        th, td {
            padding: 12px 20px;
            border: 1px solid #ccc;
            text-align: center;
        }
        th {
            background-color: #007bff;
            color: white;
        }
    </style>
</head>
<body>
    <h1 style="color: black;">Welcome, Faculty!</h1>
    <h1>Feedback Summary by Subject</h1>

<%
    String[] subjects = { "Java", "Python", "DBMS", "OS", "CN" };

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/feedback_system", "root", "Aiswarya@2004"); // update password if needed

        for (String subject : subjects) {
            PreparedStatement ps = con.prepareStatement("SELECT rating, comment FROM feedback WHERE subject = ?");
            ps.setString(1, subject);
            ResultSet rs = ps.executeQuery();

            boolean hasData = false;
%>

            <h2><%= subject %></h2>
            <table>
                <tr>
                    <th>Rating</th>
                    <th>Comment</th>
                </tr>

<%
            while (rs.next()) {
                hasData = true;
%>
                <tr>
                    <td><%= rs.getInt("rating") %></td>
                    <td><%= rs.getString("comment") %></td>
                </tr>
<%
            }

            if (!hasData) {
%>
                <tr>
                    <td colspan="2">No feedback yet.</td>
                </tr>
<%
            }
%>
            </table>
<%
            rs.close();
            ps.close();
        }

        con.close();
    } catch (Exception e) {
        out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
        e.printStackTrace();
    }
%>

</body>
</html>
