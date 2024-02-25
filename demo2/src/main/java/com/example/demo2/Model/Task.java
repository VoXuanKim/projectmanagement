package com.example.demo2.Model;

import java.time.LocalDate;

public class Task {
    private int TaskId;
    private String taskName;
    private String taskCategory;
    private LocalDate taskStartDate;
    private LocalDate taskEndDate;
    private String  taskPerson;
    private String  taskClient;
    private String Description;
    private String ProjectId;

    public Task() {
    }

    public Task(int taskId, String taskName, String taskCategory, LocalDate taskStartDate, LocalDate taskEndDate, String taskPerson, String taskClient, String description, String projectId) {
        TaskId = taskId;
        this.taskName = taskName;
        this.taskCategory = taskCategory;
        this.taskStartDate = taskStartDate;
        this.taskEndDate = taskEndDate;
        this.taskPerson = taskPerson;
        this.taskClient = taskClient;
        Description = description;
        ProjectId = projectId;
    }

    public Task(String taskName, String taskCategory, LocalDate taskStartDate, LocalDate taskEndDate, String taskPerson, String taskClient, String description, String projectId) {
        this.taskName = taskName;
        this.taskCategory = taskCategory;
        this.taskStartDate = taskStartDate;
        this.taskEndDate = taskEndDate;
        this.taskPerson = taskPerson;
        this.taskClient = taskClient;
        this.Description = description;
        this.ProjectId = projectId;
    }

    public int getTaskId() {
        return TaskId;
    }

    public void setTaskId(int taskId) {
        TaskId = taskId;
    }

    public String getTaskName() {
        return taskName;
    }

    public void setTaskName(String taskName) {
        this.taskName = taskName;
    }

    public String getTaskCategory() {
        return taskCategory;
    }

    public void setTaskCategory(String taskCategory) {
        this.taskCategory = taskCategory;
    }

    public LocalDate getTaskStartDate() {
        return taskStartDate;
    }

    public void setTaskStartDate(LocalDate taskStartDate) {
        this.taskStartDate = taskStartDate;
    }

    public LocalDate getTaskEndDate() {
        return taskEndDate;
    }

    public void setTaskEndDate(LocalDate taskEndDate) {
        this.taskEndDate = taskEndDate;
    }

    public String getTaskPerson() {
        return taskPerson;
    }

    public void setTaskPerson(String taskPerson) {
        this.taskPerson = taskPerson;
    }

    public String getTaskClient() {
        return taskClient;
    }

    public void setTaskClient(String taskClient) {
        this.taskClient = taskClient;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }

    public String getProjectId() {
        return ProjectId;
    }

    public void setProjectId(String projectId) {
        ProjectId = projectId;
    }
}
