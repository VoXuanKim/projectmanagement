package com.example.demo2.controller;

import com.example.demo2.Dao.TaskDao;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/DeleteTaskServlet")
public class DeleteTaskServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int taskId = Integer.parseInt(request.getParameter("taskId"));

        // Gọi phương thức xóa task từ DAO
        TaskDao taskDao = new TaskDao();
        taskDao.deleteTask(taskId);

        // Gửi phản hồi về client (nếu cần)
        response.getWriter().write("Task deleted successfully");
    }
}
