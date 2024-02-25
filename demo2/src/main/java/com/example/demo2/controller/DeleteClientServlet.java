package com.example.demo2.controller;

import com.example.demo2.Dao.ClientDao;
import com.example.demo2.Dao.EmployeeDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/DeleteClientServlet")
public class DeleteClientServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String clientId = request.getParameter("deleteClientId");

        if (clientId != null && !clientId.isEmpty()) {
            ClientDao clientDao = new ClientDao();
            clientDao.deleteClient(Integer.parseInt(clientId));

            // Send a JSON response with success status
            response.setContentType("application/json");
            response.getWriter().write("{\"success\": true}");
        } else {
            // Send a JSON response with failure status
            response.setContentType("application/json");
            response.getWriter().write("{\"success\": false, \"message\": \"Invalid client ID\"}");
        }

    }
}
