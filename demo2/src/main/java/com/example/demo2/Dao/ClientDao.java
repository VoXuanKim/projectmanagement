package com.example.demo2.Dao;

import com.example.demo2.Model.Client;
import com.example.demo2.Model.Employee;
import com.example.demo2.mysql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ClientDao {
    private java.sql.Connection connection;
    public ClientDao() {
        connection = Connection.getConn().getConnection();
    }
    public void addClient(Client client) {
        try {
            // Exclude clientid from the SQL query
            String sql = "INSERT INTO client (name, companyname, profileimageclient, email, phone, description, projectid) VALUES (?, ?, ?, ?, ?, ?, ?)";

            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                // Skip setting clientid in the PreparedStatement

                // Set other fields
                statement.setString(1, client.getName());
                statement.setString(2, client.getCompanyName());
                statement.setString(3, client.getProfileImageClient());
                statement.setString(4, client.getEmail());
                statement.setString(5, client.getPhone());
                statement.setString(6, client.getDescription());
                statement.setString(7, client.getProjectId());

                // Execute the query
                statement.executeUpdate();

                System.out.println("Client added successfully.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public List<Client> getClientsByProjectId(String projectId) {
        List<Client> clients = new ArrayList<>();

        try {
            String sql = "SELECT * FROM client WHERE projectid = ?";

            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, projectId);

                try (ResultSet resultSet = statement.executeQuery()) {
                    while (resultSet.next()) {
                        Client client = new Client(
                                resultSet.getInt("clientid"),
                                resultSet.getString("name"),
                                resultSet.getString("companyname"),
                                resultSet.getString("profileimageclient"),
                                resultSet.getString("email"),
                                resultSet.getString("phone"),
                                resultSet.getString("description"),
                                resultSet.getString("projectid")
                        );
                        clients.add(client);
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return clients;
    }

    public Client getClientById(String clientId) {
        Client client = null;
        try {
            String sql = "SELECT * FROM client WHERE clientid = ?";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, clientId);
                try (ResultSet resultSet = statement.executeQuery()) {
                    if (resultSet.next()) {
                        client = new Client();
                        client.setClientId(resultSet.getInt("clientid"));
                        client.setName(resultSet.getString("name"));
                        client.setCompanyName(resultSet.getString("companyname"));
                        client.setProfileImageClient(resultSet.getString("profileimageclient"));
                        client.setEmail(resultSet.getString("email"));
                        client.setPhone(resultSet.getString("phone"));
                        client.setDescription(resultSet.getString("description"));
                        client.setProjectId(resultSet.getString("projectid"));
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return client;
    }

    public void deleteClient(int clientId) {
        try {
            if (connection != null && !connection.isClosed()) {
                String sql = "DELETE FROM client WHERE clientid = ?";
                try (PreparedStatement statement = connection.prepareStatement(sql)) {
                    statement.setInt(1, clientId);
                    statement.executeUpdate();
                }
            } else {
                System.err.println("Connection is not valid or closed.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


}
