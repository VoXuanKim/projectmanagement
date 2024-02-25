package com.example.demo2.controller;

import com.example.demo2.Dao.EmployeeDao;
import com.example.demo2.Dao.ProjectDao;
import com.example.demo2.Dao.UserDao;
import com.example.demo2.Model.Employee;
import com.example.demo2.Model.Project;
import com.example.demo2.Model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "PageMain", urlPatterns = {"/Main-Page"})
public class PageMain extends HttpServlet {
    private ProjectDao projectDao = new ProjectDao();
    private UserDao userDao = new UserDao();
    private EmployeeDao employeeDao = new EmployeeDao();
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String projectId = request.getParameter("projectId");
        String role = request.getParameter("role");

        // Set projectId and role as request attributes
        request.setAttribute("projectId", projectId);
        request.setAttribute("role", role);

        String userEmail = (String) request.getSession().getAttribute("userEmail");


        // Fetch user details from the database
        User user = projectDao.getUserByEmail(userEmail);


        // Set user details as request attributes
        request.setAttribute("userName", user.getSurname() + " " + user.getName());
        request.setAttribute("userEmail", user.getEmail());



        RequestDispatcher rd = getServletContext().getRequestDispatcher("/template/my-task/html/dist/index-2.jsp");
        rd.forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String projectId = request.getParameter("projectId");
        String invitedEmail = request.getParameter("invitedEmail");

        // Assuming you have a method to add a user to a project with a default role
        // You should replace this with the appropriate method from your DAO
        ProjectDao projectDao = new ProjectDao();
        try {
            projectDao.addUserToProject(invitedEmail, projectId, "member");

            // Redirect back to the main page or display a success message
            response.sendRedirect(request.getContextPath() + "/Main-Page?projectId=" + projectId);
        } catch (RuntimeException e) {
            // An exception occurred during addUserToProject

            // Set the error message in the request attribute
            request.setAttribute("errorMessage", "Error: " + e.getMessage());
            // Forward to the erro.jsp page
            RequestDispatcher dispatcher = request.getRequestDispatcher("template/my-task/html/dist/ui-elements/auth-404.jsp");
            dispatcher.forward(request, response);
        }

//        projectDao.addUserToProject(invitedEmail, projectId, "member");
//
//        // Redirect back to the main page or display a success message
//        response.sendRedirect(request.getContextPath() + "/Main-Page?projectId=" + projectId);

    }

}
