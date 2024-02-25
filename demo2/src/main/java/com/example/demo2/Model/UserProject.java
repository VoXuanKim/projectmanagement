package com.example.demo2.Model;

public class UserProject {
    private int id;
    private String email;
    private String ProjectId;
    private String ProjectName;
    private String Role;


    public UserProject(int id, String email, String projectId, String projectName, String role) {
        this.id = id;
        this.email = email;
        ProjectId = projectId;
        ProjectName = projectName;
        Role = role;
    }

    public UserProject(String email, String projectId, String projectName, String role) {
        this.email = email;
        ProjectId = projectId;
        ProjectName = projectName;
        Role = role;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getProjectId() {
        return ProjectId;
    }

    public void setProjectId(String projectId) {
        ProjectId = projectId;
    }

    public String getProjectName() {
        return ProjectName;
    }

    public void setProjectName(String projectName) {
        ProjectName = projectName;
    }

    public String getRole() {
        return Role;
    }

    public void setRole(String role) {
        Role = role;
    }
}
