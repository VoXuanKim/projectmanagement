package com.example.demo2.Dao;

import com.example.demo2.Model.Employee;
import com.example.demo2.Model.User;
import com.example.demo2.mysql.Connection;

import javax.servlet.http.HttpServletRequest;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDao {
    private java.sql.Connection connection;
    public EmployeeDao() {
        connection = Connection.getConn().getConnection();
    }
    public void addEmployee(Employee employee) {
        try {
            String sql = "INSERT INTO Employees (employeeid, name, profileImage, phone, email, description, projectid) VALUES (?, ?, ?, ?, ?, ?, ?)";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, employee.getEmployeeId());
                statement.setString(2, employee.getName());
                statement.setString(3, employee.getProfileImage());
                statement.setString(4, employee.getPhone());
                statement.setString(5, employee.getEmail());
                statement.setString(6, employee.getDescription());
                statement.setString(7, employee.getProjectId());

                statement.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Employee> getAllEmployees(String projectId) {
        List<Employee> employees = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Employees WHERE projectid = ?";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, projectId);
                try (ResultSet resultSet = statement.executeQuery()) {
                    while (resultSet.next()) {
                        Employee employee = new Employee();
                        employee.setName(resultSet.getString("name"));
                        employee.setEmployeeId(resultSet.getString("employeeid"));
                        employee.setProfileImage(resultSet.getString("profileImage"));
                        employee.setPhone(resultSet.getString("phone"));
                        employee.setEmail(resultSet.getString("email"));
                        employee.setDescription(resultSet.getString("description"));
                        employee.setProjectId(resultSet.getString("projectid"));

                        employees.add(employee);
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return employees;
    }

    public void deleteEmployee(String employeeId) {
        try {
            // Check if the connection is valid before proceeding
            if (connection != null && !connection.isClosed()) {
                String sql = "DELETE FROM Employees WHERE employeeid = ?";
                try (PreparedStatement statement = connection.prepareStatement(sql)) {
                    statement.setString(1, employeeId);
                    statement.executeUpdate();
                }
            } else {
                System.err.println("Connection is not valid or closed.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle the exception or throw a custom exception if necessary
        }
    }

    public Employee getEmployeeById(String employeeId) {
        Employee employee = null;
        try {
            String sql = "SELECT * FROM Employees WHERE employeeid = ?";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, employeeId);
                try (ResultSet resultSet = statement.executeQuery()) {
                    if (resultSet.next()) {
                        employee = new Employee();
                        employee.setName(resultSet.getString("name"));
                        employee.setEmployeeId(resultSet.getString("employeeid"));
                        employee.setProfileImage(resultSet.getString("profileImage"));
                        employee.setPhone(resultSet.getString("phone"));
                        employee.setEmail(resultSet.getString("email"));
                        employee.setDescription(resultSet.getString("description"));
                        employee.setProjectId(resultSet.getString("projectid"));
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return employee;
    }

}
