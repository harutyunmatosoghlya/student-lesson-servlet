<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ADD LESSON</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: url("https://i.pinimg.com/originals/90/7d/7b/907d7b222f4b2b803c2fa63bf307275f.png") no-repeat center top;
            background-size: cover;
            background-attachment: fixed;
        }

        h1 {
            color: #4a90e2;
        }

        a {
            text-decoration: none;
            color: #4a90e2;
            margin-right: 10px;
        }

        a:hover {
            text-decoration: underline;
        }

        form {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 300px;
        }

        form input, form select {
            width: 100%;
            padding: 8px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        form input[type="submit"] {
            background-color: #4a90e2;
            color: white;
            border: none;
            cursor: pointer;
            font-weight: bold;
        }

        form input[type="submit"]:hover {
            background-color: #357ab7;
        }

        .links {
            color: #9ca7ff;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
<div>
    <h1>Add Lesson</h1>
    <div class="links">
        <a href="/lessons">Lessons</a> |
        <a href="index.jsp">Main</a>
    </div>
    <form action="/addLesson" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name">

        <label for="duration">Duration:</label>
        <input type="time" id="duration" name="duration">

        <label for="lecturerName">Lecturer Name:</label>
        <input type="text" id="lecturerName" name="lecturerName">

        <label for="price">Price:</label>
        <input type="number" id="price" step="0.01" name="price">

        <input type="submit" value="ADD">
    </form>
</div>
</body>
</html>