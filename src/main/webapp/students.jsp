<%@ page import="java.util.List" %>
<%@ page import="am.itspace.studentlessonservlet.model.Student" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student</title>
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
            flex-direction: column;
            min-height: 100vh;
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
            font-weight: bold;
            margin-bottom: 10px;
        }

        a:hover {
            text-decoration: underline;
        }

        table {
            width: 80%;
            border-collapse: collapse;
            margin-top: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: #fff;
            border-radius: 8px;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #4a90e2;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        td {
            font-size: 14px;
        }

        .delete-link {
            color: #e74c3c;
            font-weight: bold;
            padding: 5px 10px;
            border-radius: 4px;
            background-color: #fceae8;
            border: 1px solid #e74c3c;
            text-transform: uppercase;
            font-size: 12px;
            transition: all 0.3s ease;
        }

        .delete-link:hover {
            background-color: #e74c3c;
            color: #fff;
            text-decoration: none;
            box-shadow: 0 4px 8px rgba(231, 76, 60, 0.2);
        }

        .edit-link {
            color: #f39c12;
            font-weight: bold;
            padding: 5px 10px;
            border-radius: 4px;
            background-color: #fff6e5;
            border: 1px solid #f39c12;
            text-transform: uppercase;
            font-size: 12px;
            margin-right: 5px;
            transition: all 0.3s ease;
        }

        .edit-link:hover {
            background-color: #f39c12;
            color: #fff;
            text-decoration: none;
            box-shadow: 0 4px 8px rgba(243, 156, 18, 0.2);
        }
    </style>
</head>
<body>
<h1>STUDENTS</h1>
<a href="addStudent">ADD STUDENT</a>
<%List<Student> students = (List<Student>) request.getAttribute("students");%>
<table>
    <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>SURNAME</th>
        <th>EMAIL</th>
        <th>AGE</th>
        <th>LESSON</th>
        <th>ACTION</th>
    </tr>
    <%for (Student student : students) {%>
    <tr>
        <td><%=student.getId()%>
        </td>
        <td><%=student.getName()%>
        </td>
        <td><%=student.getSurname()%>
        </td>
        <td><%=student.getEmail()%>
        </td>
        <td><%=student.getAge()%>
        </td>
        <td><%=student.getLesson().getName()%>
        </td>
        <td><a href="/deleteStudent?id=<%= student.getId() %>" class="delete-link">DELETE</a> | <a
                href="/editStudent?id=<%= student.getId() %>" class="edit-link">EDIT</a></td>
    </tr>
    <%}%>
</table>
</body>
</html>