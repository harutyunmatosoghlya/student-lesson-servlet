package am.itspace.studentlessonservlet.servlet;

import am.itspace.studentlessonservlet.service.LessonService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/deleteLesson")
public class DeleteLessonServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LessonService.delete(Integer.parseInt(req.getParameter("id")));
        resp.sendRedirect("/lessons");
    }
}