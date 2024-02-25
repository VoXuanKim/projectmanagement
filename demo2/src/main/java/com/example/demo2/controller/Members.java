package com.example.demo2.controller;

import com.example.demo2.Dao.EmployeeDao;
import com.example.demo2.Dao.ProjectDao;
import com.example.demo2.Model.Employee;
import com.example.demo2.Model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "Members", urlPatterns = {"/Members-Project"})
public class Members extends HttpServlet {
    EmployeeDao employeeDao = new EmployeeDao();
    private ProjectDao projectDao = new ProjectDao();

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String projectId = request.getParameter("projectId");
         // Replace with the actual project id
        List<Employee> employees = employeeDao.getAllEmployees(projectId);

        request.setAttribute("employees", employees);

        HttpSession session = request.getSession();
        session.setAttribute("employees", employees);



        String userEmail = (String) request.getSession().getAttribute("userEmail");


        // Fetch user details from the database
        User user = projectDao.getUserByEmail(userEmail);


        // Set user details as request attributes
        request.setAttribute("userName", user.getSurname() + " " + user.getName());
        request.setAttribute("userEmail", user.getEmail());

        RequestDispatcher rd = getServletContext().getRequestDispatcher("/template/my-task/html/dist/members.jsp");
        rd.forward(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

//        try {
            // Lấy thông tin từ request

        String name = request.getParameter("txtname");
        String employeeId = request.getParameter("txtemployeeId");
        String phone = request.getParameter("txtprofileImage");
        String profileImage = request.getParameter("txtphone");
        String email = request.getParameter("txtemail");
        String description = request.getParameter("txtdescription");
        String projectId = request.getParameter("projectId");

        Employee employee = new Employee(name, employeeId, phone, profileImage, email, description, projectId);

        employeeDao.addEmployee(employee);





        response.sendRedirect(request.getContextPath() + "/Members-Project?projectId=" + projectId);

//        } catch (NumberFormatException e) {
//            // Xử lý lỗi khi chuyển đổi số điện thoại sang kiểu int nếu cần thiết
//            RequestDispatcher dispatcher = request.getRequestDispatcher("template/my-task/html/dist/ui-elements/auth-404.jsp");
//            dispatcher.forward(request, response);
//        }
    }

}
