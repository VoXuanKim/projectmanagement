package com.example.demo2.controller;

import com.example.demo2.Dao.ClientDao;
import com.example.demo2.Dao.EmployeeDao;
import com.example.demo2.Dao.ProjectDao;
import com.example.demo2.Dao.TaskDao;
import com.example.demo2.Model.Client;
import com.example.demo2.Model.Employee;
import com.example.demo2.Model.Task;
import com.example.demo2.Model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

@WebServlet(name = "taskPage", urlPatterns = {"/Task-Project-page"})
public class TaskController extends HttpServlet {
    private TaskDao taskDao = new TaskDao();
    private ClientDao clientDao = new ClientDao();
    private EmployeeDao employeeDao = new EmployeeDao();
    private ProjectDao projectDao = new ProjectDao();

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {


        String projectId = request.getParameter("projectId");

        List<Client> clients = clientDao.getClientsByProjectId(projectId);
        List<Task> tasks = taskDao.getAllTasks(projectId); // Assuming you have a method to retrieve all tasks in TaskDao
        request.setAttribute("tasks", tasks);

        List<Employee> employees = employeeDao.getAllEmployees(projectId);
        request.setAttribute("clients", clients);
        request.setAttribute("employees", employees);



        String userEmail = (String) request.getSession().getAttribute("userEmail");
        User user = projectDao.getUserByEmail(userEmail);
        request.setAttribute("userName", user.getSurname() + " " + user.getName());
        request.setAttribute("userEmail", user.getEmail());

        RequestDispatcher rd = getServletContext().getRequestDispatcher("/template/my-task/html/dist/task.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String taskName = request.getParameter("txttaskName");
        String taskCategory = request.getParameter("txttaskCategory");
        LocalDate taskStartDate = LocalDate.parse(request.getParameter("txttaskStartDate"));
        LocalDate taskEndDate = LocalDate.parse(request.getParameter("txttaskEndDate"));
        String taskPerson = request.getParameter("txttaskPerson");
        String taskClient = request.getParameter("txttaskClient");
        String description = request.getParameter("txtDescription");
        String projectId = request.getParameter("projectId");

        List<Task> tasks = taskDao.getAllTasks(projectId);
        request.setAttribute("tasks", tasks);


        Task task = new Task(taskName,taskCategory,taskStartDate,taskEndDate,taskPerson,taskClient,description,projectId);
        taskDao.addTask(task);
        request.setAttribute("projectId", projectId);


        RequestDispatcher rd = getServletContext().getRequestDispatcher("/template/my-task/html/dist/task.jsp");
        rd.forward(request, response);
    }
}
