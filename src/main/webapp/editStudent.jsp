<%@ page import="java.util.List" %>
<%@ page import="am.itspace.studentlessonservlet.model.Lesson" %>
<%@ page import="am.itspace.studentlessonservlet.model.Student" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
<%List<Lesson> lessons = (List<Lesson>) request.getAttribute("lessons");
    Student student = (Student) request.getAttribute("student");
%>
<div>
    <h1>Edit Student</h1>
    <div class="links">
        <a href="/students">students</a> |
        <a href="index.jsp">Main</a>
    </div>
    <form action="/editStudent" method="post">
        <input type="hidden" id="id" name="id" value="<%=student.getId()%>">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="<%=student.getName()%>">

        <label for="surname">Surname:</label>
        <input type="text" id="surname" name="surname" value="<%=student.getSurname()%>">

        <label for="email">Email:</label>
        <input type="text" id="email" name="email" value="<%=student.getEmail()%>">

        <label for="age">AGE:</label>
        <input type="number" id="age" min="16" step="1" name="age" value="<%=student.getAge()%>">

        <label for="lesson">LESSON</label>
        <select id="lesson" name="lesson">
            <option value="<%=student.getLesson().getId()%>" selected><%=student.getLesson().getName() + " " + student.getLesson().getLecturerName()%></option>
            <%for (Lesson lesson : lessons) {%>
            <option value="<%=lesson.getId()%>"><%=lesson.getName() + " " + lesson.getLecturerName()%>
            </option>
            <%}%>
        </select>
        <input type="submit" value="UPDATE">
    </form>
</div>
</body>
</html>