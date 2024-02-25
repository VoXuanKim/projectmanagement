package com.example.demo2.Model;

public class Client {
    private int clientId;
    private String name;
    private String companyName;
    private String profileImageClient;
    private String Email;
    private String Phone;
    private String description;

    private String ProjectId;

    public Client() {
    }

    public Client(String name, String companyName, String profileImageClient, String email, String phone, String description, String projectId) {
        this.name = name;
        this.companyName = companyName;
        this.profileImageClient = profileImageClient;
        Email = email;
        Phone = phone;
        this.description = description;
        ProjectId = projectId;
    }

    public Client(int clientId, String name, String companyName, String profileImageClient, String email, String phone, String description, String projectId) {
        this.clientId = clientId;
        this.name = name;
        this.companyName = companyName;
        this.profileImageClient = profileImageClient;
        Email = email;
        Phone = phone;
        this.description = description;
        ProjectId = projectId;
    }

    public int getClientId() {
        return clientId;
    }

    public void setClientId(int clientId) {
        this.clientId = clientId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getProfileImageClient() {
        return profileImageClient;
    }

    public void setProfileImageClient(String profileImageClient) {
        this.profileImageClient = profileImageClient;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String phone) {
        Phone = phone;
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
