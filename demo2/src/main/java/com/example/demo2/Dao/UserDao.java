package com.example.demo2.Dao;


import com.example.demo2.Model.User;
import com.example.demo2.mysql.Connection;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;

public class UserDao {
    private java.sql.Connection connection;

    public UserDao() {
        connection = Connection.getConn().getConnection();
    }


    public void insert(User user)  {
        String sql = "INSERT INTO user (surname, name, email, password) VALUES (?, ?, ?, ?)";
        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setString(1, user.getSurname());
            preparedStatement.setString(2, user.getName());
            preparedStatement.setString(3, user.getEmail());
            preparedStatement.setString(4, user.getPassword());

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public User getUserByEmail(String email) {
        User user = null;
        String sql = "SELECT * FROM user WHERE email = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setString(1, email);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                if (resultSet.next()) {
                    user = new User(
                            resultSet.getString("surname"),
                            resultSet.getString("name"),
                            resultSet.getString("email"),
                            resultSet.getString("password")
                    );
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return user;
    }




//    public void delete(String id) {
//        String sql = "DELETE FROM `student` WHERE id=?";
//        try {
//            PreparedStatement preparedStatement = connection.prepareStatement(sql);
//            preparedStatement.setString(1, id);
//            preparedStatement.executeUpdate();
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//    }
//    public Student findById(String id) {
//        String sql = "SELECT * FROM student WHERE id =?";
//        Student result = new Student();
//        try {
//            PreparedStatement preparedStatement = connection.prepareStatement(sql);
//            preparedStatement.setString(1, id);
//            ResultSet rs = preparedStatement.executeQuery();
//            while (rs.next()) {
//                result = convertObject(rs);
//            }
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//        return result;
//    }
//    public void update (Student student) {
//        String sql = "UPDATE `student` SET name=?, email=?, phone=? WHERE id = ?";
//        try {
//            PreparedStatement preparedStatement = connection.prepareStatement(sql);
//            preparedStatement.setString(1, student.getName());
//            preparedStatement.setString(2, student.getEmail());
//            preparedStatement.setString(3, student.getPhone());
//            preparedStatement.setString(4, student.getId());
//            preparedStatement.executeUpdate();
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//    }
//    public List<Student> findAll() {
//        List<Student> listStudent = new ArrayList<>();
//        try {
//            Statement statement = connection.createStatement();
//            String sql = "SELECT * FROM student";
//            ResultSet rs = statement.executeQuery(sql);
//            while (rs.next()) {
//                listStudent.add(convertObject(rs));
//            }
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//        return listStudent;
//    }
//
//    private Student convertObject(ResultSet rs) throws SQLException {
//        String id = rs.getString("id");
//        String name = rs.getString("name");
//        String email = rs.getString("email");
//        String phone = rs.getString("phone");
//        Student student = new Student(id, name, email, phone);
//        return student;
//    }
}
