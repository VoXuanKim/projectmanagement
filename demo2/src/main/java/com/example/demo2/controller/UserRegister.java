package com.example.demo2.controller;

import com.example.demo2.Dao.UserDao;
import com.example.demo2.Model.User;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UserRegister", urlPatterns = "/Register-User-Page")
public class UserRegister extends HttpServlet {
    private UserDao userDao = new UserDao();

    public void init() {
    }
    private String hashPassword(String plainTextPassword) {
        return BCrypt.hashpw(plainTextPassword, BCrypt.gensalt(12));
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/template/my-task/html/dist/ui-elements/auth-signup.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String surname = request.getParameter("txtsurname");
        String name = request.getParameter("txtname");
        String email = request.getParameter("txtemail");
        String password = request.getParameter("txtpassword");
        String confirmPassword = request.getParameter("txtconfirmpassword");

        if (surname.isEmpty() || name.isEmpty() || email.isEmpty() || password.isEmpty() || confirmPassword.isEmpty()) {
            request.setAttribute("error", "All fields are required");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/template/my-task/html/dist/ui-elements/auth-signup.jsp");
            dispatcher.forward(request, response);
            return;
        }

        if (password.equals(confirmPassword)) {
            String hashedPassword = hashPassword(password);
            User user = new User(surname, name, email, hashedPassword);
            userDao.insert(user);
            request.setAttribute("user", user);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/template/my-task/html/dist/ui-elements/auth-signup.jsp");
            dispatcher.forward(request, response);
        } else {
            request.setAttribute("error", "Passwords do not match");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/template/my-task/html/dist/ui-elements/auth-signup.jsp");
            dispatcher.forward(request, response);
        }
    }
}
