package am.itspace.studentlessonservlet.servlet;

import am.itspace.studentlessonservlet.model.Lesson;
import am.itspace.studentlessonservlet.service.LessonService;
import am.itspace.studentlessonservlet.util.DateUtil;
import lombok.SneakyThrows;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/editLesson")
public class EditLessonServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("lesson", LessonService.getById(Integer.parseInt(req.getParameter("id"))));
        req.getRequestDispatcher("/editLesson.jsp").forward(req, resp);
    }

    @SneakyThrows
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LessonService.update(Lesson.builder()
                .id(Integer.parseInt(req.getParameter("id")))
                .name(req.getParameter("name"))
                .duration(DateUtil.fromWebStringToDate(req.getParameter("duration")))
                .lecturerName(req.getParameter("lecturerName"))
                .price(Double.parseDouble(req.getParameter("price")))
                .build());
        resp.sendRedirect("/lessons");
    }
}