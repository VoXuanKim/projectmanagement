package com.example.demo2.controller;

import com.example.demo2.Dao.EmployeeDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/DeleteEmployeeServlet")
public class DeleteEmployeeServlet extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String employeeId = request.getParameter("employeeId");

        EmployeeDao employeeDao = new EmployeeDao();
        employeeDao.deleteEmployee(employeeId);

        response.setContentType("application/json");
        response.getWriter().write("{\"success\": true}");
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/template/my-task/html/dist/members.jsp");
        rd.forward(request, response);

    }
}