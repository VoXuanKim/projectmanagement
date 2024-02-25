package com.example.demo2.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Projects", urlPatterns = {"/Projects-Page"})
public class Projects extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/template/my-task/html/dist/projects.jsp");
        rd.forward(request, response);
    }
}
