package com.example.demo2.controller;

import com.example.demo2.Dao.ProjectDao;
import com.example.demo2.Dao.UserDao;
import com.example.demo2.Model.Project;
import com.example.demo2.Model.User;
import com.example.demo2.Model.UserProject;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.List;

@WebServlet(name = "UserListProject", urlPatterns = {"/List-Project-Page"})
public class UserListProject extends HttpServlet {

    public void init() {
    }
    private UserDao userDao = new UserDao();
    private ProjectDao projectDao = new ProjectDao();
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        String userEmail = (String) session.getAttribute("userEmail");

        String projectId = request.getParameter("projectId");
        HttpSession session1 = request.getSession();
        session1.setAttribute("projectId", projectId);


        List<UserProject> userProjects1 = projectDao.getUserProjects(userEmail);


        request.setAttribute("userProjects1", userProjects1);


        String sessionProjectId = request.getParameter("sessionProjectId");

        if (sessionProjectId != null) {

            session.setAttribute("selectedProjectId", sessionProjectId);
        }


        User user = projectDao.getUserByEmail(userEmail);
        request.setAttribute("userName", user.getSurname() + " " + user.getName());
        request.setAttribute("userEmail", user.getEmail());

        // Forward to the JSP page
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/template/my-task/html/dist/ui-elements/index.jsp");
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String projectid = request.getParameter("txtprojectid");
        String projectname = request.getParameter("txtprojectname");
        String role = request.getParameter("txtrole");

        // Get user email from session
        HttpSession session = request.getSession();
        String userEmail = (String) session.getAttribute("userEmail");

        // Create a project and its association with the user
        Project project = new Project(projectid, projectname);
        projectDao.insertProject(project);
        UserProject userProject = new UserProject(userEmail, projectid, projectname, role);
        projectDao.insertUserProject(userProject);

        String deleteProjectId = request.getParameter("deleteProjectId");
        if (deleteProjectId != null) {
            projectDao.deleteProject(deleteProjectId);
            response.sendRedirect(request.getContextPath() + "/List-Project-Page");
            return;
        }




        response.sendRedirect(request.getContextPath() + "/List-Project-Page");


    }
}
