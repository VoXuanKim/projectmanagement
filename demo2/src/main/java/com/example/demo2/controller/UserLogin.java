package com.example.demo2.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.example.demo2.Dao.UserDao;
import com.example.demo2.Model.User;
import org.mindrot.jbcrypt.BCrypt;


@WebServlet(name = "UserLogin", urlPatterns = {"", "/Login-User-Page"})
public class UserLogin extends HttpServlet{
    private UserDao userDao = new UserDao();

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/template/my-task/html/dist/ui-elements/auth-signin.jsp");
        rd.forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("txtemail");
        String password = request.getParameter("txtpassword");
        User user = userDao.getUserByEmail(email);

        if (user != null && checkPassword(password, user.getPassword())) {
            // Lưu email vào session
            request.getSession().setAttribute("userEmail", email); // lưu vết email
            response.sendRedirect(request.getContextPath() + "/List-Project-Page");
        } else {
            request.setAttribute("error", "Invalid email or password");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/template/my-task/html/dist/ui-elements/auth-signin.jsp");
            dispatcher.forward(request, response);
        }
    }

    private boolean checkPassword(String plainPassword, String hashedPassword) {
        return BCrypt.checkpw(plainPassword, hashedPassword);
    }

}
