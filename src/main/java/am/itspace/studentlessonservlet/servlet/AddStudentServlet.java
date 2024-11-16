package am.itspace.studentlessonservlet.servlet;

import am.itspace.studentlessonservlet.model.Student;
import am.itspace.studentlessonservlet.service.LessonService;
import am.itspace.studentlessonservlet.service.StudentService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/addStudent")
public class AddStudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("lessons", LessonService.getAll());
        req.getRequestDispatcher("addStudent.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        StudentService.add(Student.builder()
                        .name(req.getParameter("name"))
                        .surname(req.getParameter("surname"))
                        .email(req.getParameter("email"))
                        .age(Integer.parseInt(req.getParameter("age")))
                        .lesson(LessonService.getById(Integer.parseInt(req.getParameter("lesson"))))
                .build());
        resp.sendRedirect("/students");
    }
}