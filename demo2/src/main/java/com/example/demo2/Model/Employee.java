package com.example.demo2.Model;

import java.time.LocalDate;

public class Employee {
    private String name;
    private String employeeId;
    private String profileImage;
    private String phone;
    private String email;
    private String description;

    private String ProjectId;

    public Employee() {
    }

    public Employee(String name, String employeeId, String profileImage, String phone, String email, String description, String projectId) {
        this.name = name;
        this.employeeId = employeeId;
        this.profileImage = profileImage;
        this.phone = phone;
        this.email = email;
        this.description = description;
        ProjectId = projectId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(String employeeId) {
        this.employeeId = employeeId;
    }

    public String getProfileImage() {
        return profileImage;
    }

    public void setProfileImage(String profileImage) {
        this.profileImage = profileImage;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getProjectId() {
        return ProjectId;
    }

    public void setProjectId(String projectId) {
        ProjectId = projectId;
    }
}
