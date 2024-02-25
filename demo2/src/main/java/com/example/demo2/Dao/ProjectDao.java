package com.example.demo2.Dao;

import com.example.demo2.Model.Project;
import com.example.demo2.Model.User;
import com.example.demo2.Model.UserProject;
import com.example.demo2.mysql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Random;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public class ProjectDao {
    private java.sql.Connection connection;

    public ProjectDao() {
        connection = Connection.getConn().getConnection();
    }
//    public void insertProject(Project project)  {
//        String sql = "INSERT INTO projects (projectid, projectname) VALUES (?, ?)";
//        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
//            preparedStatement.setString(1, project.getProjectId());
//            preparedStatement.setString(2, project.getProjectName());
//            preparedStatement.executeUpdate();
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//    }
    public void deleteProject(String projectId) {
        String sql = "DELETE FROM projects WHERE projectid = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setString(1, projectId);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
public void insertProject(Project project) {
    String sqlCheck = "SELECT * FROM projects WHERE projectid = ?";
    try (PreparedStatement checkStatement = connection.prepareStatement(sqlCheck)) {
        checkStatement.setString(1, project.getProjectId());
        try (ResultSet resultSet = checkStatement.executeQuery()) {
            if (resultSet.next()) {
                // Project ID already exists, handle accordingly (e.g., generate a new ID and default name)
                project.setProjectId(generateUniqueProjectID());
                project.setProjectName("Default Project Name"); // Set a default name
            }
        }
    } catch (SQLException e) {
        throw new RuntimeException(e);
    }

    String sqlInsert = "INSERT INTO projects (projectid, projectname) VALUES (?, ?)";
    try (PreparedStatement preparedStatement = connection.prepareStatement(sqlInsert)) {
        preparedStatement.setString(1, project.getProjectId());
        preparedStatement.setString(2, project.getProjectName());
        preparedStatement.executeUpdate();
    } catch (SQLException e) {
        throw new RuntimeException(e);
    }
}

    private String generateUniqueProjectID() {
        // Implement your logic to generate a unique project ID (e.g., using UUID)
        // Example using UUID:
        return UUID.randomUUID().toString().replace("-", "");
    }
    public void insertUserProject(UserProject userProject) {
        String sqlCheck = "SELECT * FROM user_project WHERE email = ? AND project_id = ?";
        try (PreparedStatement checkStatement = connection.prepareStatement(sqlCheck)) {
            checkStatement.setString(1, userProject.getEmail());
            checkStatement.setString(2, userProject.getProjectId());
            try (ResultSet resultSet = checkStatement.executeQuery()) {
                if (!resultSet.next()) {
                    // Entry does not exist, proceed with the insertion
                    String sqlInsert = "INSERT INTO user_project (email, project_id, project_name, role) VALUES (?, ?, ?, ?)";
                    try (PreparedStatement preparedStatement = connection.prepareStatement(sqlInsert)) {
                        preparedStatement.setString(1, userProject.getEmail());
                        preparedStatement.setString(2, userProject.getProjectId());
                        preparedStatement.setString(3, userProject.getProjectName());
                        preparedStatement.setString(4, userProject.getRole());
                        preparedStatement.executeUpdate();
                    }
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Project> getProjects(String userEmail) {
        List<Project> userProjects = new ArrayList<>();
        String sql = "SELECT p.* FROM projects p " +
                "JOIN user_project up ON p.projectid = up.project_id " +
                "WHERE up.email = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setString(1, userEmail);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                while (resultSet.next()) {
                    Project project = new Project(
                            resultSet.getString("projectid"),
                            resultSet.getString("projectname")

                    );
                    userProjects.add(project);
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return userProjects;
    }

    public List<UserProject> getUserProjects(String userEmail) {
        List<UserProject> userProjects = new ArrayList<>();
        String sql = "SELECT up.id, up.email, up.project_id AS ProjectId, " +
                "p.projectname AS ProjectName, up.role AS Role " +
                "FROM user_project up " +
                "JOIN projects p ON up.project_id = p.projectid " +
                "WHERE up.email = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setString(1, userEmail);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                while (resultSet.next()) {
                    UserProject userProject = new UserProject(
                            resultSet.getInt("id"),
                            resultSet.getString("email"),
                            resultSet.getString("ProjectId"),
                            resultSet.getString("ProjectName"),
                            resultSet.getString("Role")
                    );
                    userProjects.add(userProject);
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return userProjects;
    }
    public String getProjectName(String projectId) {
        // Implement your logic to retrieve the project name based on the project ID
        // This may involve querying the 'projects' table
        // For example:
        String sql = "SELECT projectname FROM projects WHERE projectid = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setString(1, projectId);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                if (resultSet.next()) {
                    return resultSet.getString("projectname");
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null; // Return null if project not found (handle it accordingly in your code)
    }



//    public void addUserToProject(String userEmail, String projectId, String role) {
//        String projectName = getProjectName(projectId);
//        String sqlInsert = "INSERT INTO user_project (email, project_id, project_name, role) VALUES (?, ?, ?, ?)";
//        try (PreparedStatement preparedStatement = connection.prepareStatement(sqlInsert)) {
//            preparedStatement.setString(1, userEmail);
//            preparedStatement.setString(2, projectId);
//            preparedStatement.setString(3, projectName); // Assuming you have a method to get project name
//            preparedStatement.setString(4, role);
//            preparedStatement.executeUpdate();
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//    }

    public void addUserToProject(String userEmail, String projectId, String role) {
        // Check if the email exists in the user table
        if (!userExists(userEmail)) {
            throw new RuntimeException("Email not found: " + userEmail);
        }

        String projectName = getProjectName(projectId);

        // Assuming 'connection' is a valid database connection
        String sqlInsert = "INSERT INTO user_project (email, project_id, project_name, role) VALUES (?, ?, ?, ?)";
        try (PreparedStatement preparedStatement = connection.prepareStatement(sqlInsert)) {
            preparedStatement.setString(1, userEmail);
            preparedStatement.setString(2, projectId);
            preparedStatement.setString(3, projectName);
            preparedStatement.setString(4, role);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    private boolean userExists(String userEmail) {
        // Assuming 'connection' is a valid database connection
        String sql = "SELECT 1 FROM user WHERE email = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setString(1, userEmail);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                return resultSet.next(); // Returns true if email exists, false otherwise
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public User getUserByEmail(String userEmail) {
        String sql = "SELECT surname, name, email FROM user WHERE email = ?";
        User user = null;

        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setString(1, userEmail);

            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                if (resultSet.next()) {
                    user = new User();
                    user.setSurname(resultSet.getString("surname"));
                    user.setName(resultSet.getString("name"));
                    user.setEmail(resultSet.getString("email"));
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return user;
    }

}
