package com.example.demo2.mysql;

import java.sql.DriverManager;
import java.sql.SQLException;

public class Connection {
    static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost:3306/project_uef";
    static final String USER = "root";
    static final String PASSWORD = "123123";
    private java.sql.Connection conn;
    private void init() {
        try {
            Class.forName(JDBC_DRIVER);
            System.out.println("conecting database.......");
            conn = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            System.out.println("Database connected");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
    private static Connection connection;
    public static Connection getConn() {
        if (connection == null) {
            connection = new Connection();
            connection.init();
        }
        return connection;
    }
    public java.sql.Connection getConnection() {
        return this.conn;
    }
}