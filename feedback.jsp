<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Feedback Form</title>
    <style>
        body {
            font-family: Arial;
            background-color: #f0f0f0;
            text-align: center;
            padding-top: 50px;
        }

        h2 {
            color: #333;
            margin-bottom: 30px;
        }

        .form-container {
            background-color: #fff;
            padding: 30px 40px;
            margin: 0 auto;
            width: 400px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            text-align: left;
        }

        label {
            font-weight: bold;
            display: block;
            margin-top: 15px;
        }

        input, select, textarea {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button {
            margin-top: 20px;
            width: 100%;
            padding: 12px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <h2>Feedback Form</h2>

    <div class="form-container">
        <form action="SubmitFeedbackServlet" method="post">
            <label for="name">Name:</label>
            <input type="text" name="name" required>

            <label for="subject">Subject:</label>
            <select name="subject" required>
                <option value="">-- Select Subject --</option>
                <option value="Java">Java</option>
                <option value="DBMS">DBMS</option>
                <option value="OS">OS</option>
            </select>

            <label for="rating">Rating:</label>
            <select name="rating" required>
                <option value="">-- Select Rating --</option>
                <option value="1">1 - Poor</option>
                <option value="2">2 - Fair</option>
                <option value="3">3 - Good</option>
                <option value="4">4 - Very Good</option>
                <option value="5">5 - Excellent</option>
            </select>

            <label for="comment">Comment:</label>
            <textarea name="comment" rows="4" required></textarea>

            <button type="submit">Submit</button>
        </form>
    </div>

</body>
</html>
