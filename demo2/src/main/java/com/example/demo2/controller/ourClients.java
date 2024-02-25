package com.example.demo2.controller;


import com.example.demo2.Dao.ClientDao;

import com.example.demo2.Dao.ProjectDao;
import com.example.demo2.Model.Client;
import com.example.demo2.Model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Clients", urlPatterns = {"/Clients-Project"})
public class ourClients extends HttpServlet {
    private ProjectDao projectDao = new ProjectDao();
    ClientDao clientDao = new ClientDao();

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String projectId = request.getParameter("projectId");

        // Create an instance of ClientDao
        ClientDao clientDao = new ClientDao();

        // Replace with the actual project id
        List<Client> clients = clientDao.getClientsByProjectId(projectId);

        request.setAttribute("clients", clients);
        HttpSession session = request.getSession();
        session.setAttribute("clients", clients);

        String userEmail = (String) request.getSession().getAttribute("userEmail");


        // Fetch user details from the database
        User user = projectDao.getUserByEmail(userEmail);


        // Set user details as request attributes
        request.setAttribute("userName", user.getSurname() + " " + user.getName());
        request.setAttribute("userEmail", user.getEmail());

        RequestDispatcher rd = getServletContext().getRequestDispatcher("/template/my-task/html/dist/ourclients.jsp");
        rd.forward(request, response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String name = request.getParameter("txtName");
        String companyName = request.getParameter("txtCompanyName");
        String profileImageClient = request.getParameter("txtProfileImageClient");
        String email = request.getParameter("txtEmail");
        String phone = request.getParameter("txtPhone");
        String description = request.getParameter("txtDescription");
        String projectId = request.getParameter("projectId");

        Client client = new Client(name, companyName, profileImageClient, email, phone, description, projectId);

        clientDao.addClient(client);

        response.sendRedirect(request.getContextPath() + "/Clients-Project?projectId=" + projectId);
    }
}
