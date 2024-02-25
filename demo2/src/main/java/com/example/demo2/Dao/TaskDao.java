package com.example.demo2.Dao;

import com.example.demo2.Model.Task;
import com.example.demo2.mysql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TaskDao {
    private java.sql.Connection connection;

    public TaskDao() {
        connection = Connection.getConn().getConnection();
    }

    public void addTask(Task task) {
        try {
            // Sử dụng PreparedStatement để tránh SQL injection
            String query = "INSERT INTO task (taskid, taskname, taskcategory, taskstartdate, taskenddate, taskperson, taskclient,description, projectid) " +
                    "VALUES (?, ?, ?, ?, ?, ?, ?, ?,?)";

            try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                // Thiết lập các giá trị tham số cho câu truy vấn
                preparedStatement.setInt(1, task.getTaskId());
                preparedStatement.setString(2,task.getTaskName());
                preparedStatement.setString(3, task.getTaskCategory());
                preparedStatement.setDate(4, java.sql.Date.valueOf(task.getTaskStartDate()));
                preparedStatement.setDate(5, java.sql.Date.valueOf(task.getTaskEndDate()));
                preparedStatement.setString(6, task.getTaskPerson());
                preparedStatement.setString(7, task.getTaskClient());
                preparedStatement.setString(8, task.getDescription());
                preparedStatement.setString(9, task.getProjectId());
                preparedStatement.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Xử lý các ngoại lệ SQL ở đây
        }
    }

    public List<Task> getAllTasks(String projectId) {
        List<Task> tasks = new ArrayList<>();
        try {
            // Modify the SQL query to include a WHERE clause for the project ID
            String sql = "SELECT * FROM task WHERE projectid = ?";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                // Set the project ID parameter
                statement.setString(1, projectId);

                try (ResultSet resultSet = statement.executeQuery()) {
                    while (resultSet.next()) {
                        Task task = new Task(
                                resultSet.getInt("taskid"),
                                resultSet.getString("taskname"),
                                resultSet.getString("taskcategory"),
                                resultSet.getDate("taskstartdate").toLocalDate(),
                                resultSet.getDate("taskenddate").toLocalDate(),
                                resultSet.getString("taskperson"),
                                resultSet.getString("taskclient"),
                                resultSet.getString("description"),
                                resultSet.getString("projectid")
                        );
                        tasks.add(task);
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return tasks;
    }

    public void deleteTask(int taskId) {
        try {
            String query = "DELETE FROM task WHERE taskid = ?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                preparedStatement.setInt(1, taskId);
                preparedStatement.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
