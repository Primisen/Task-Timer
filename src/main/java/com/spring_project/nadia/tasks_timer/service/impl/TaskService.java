package com.spring_project.nadia.tasks_timer.service.impl;

import com.spring_project.nadia.tasks_timer.model.*;

import java.util.List;

public interface TaskService {

    void addTask(Task task);

    Task findByName(Task task);

    List<Task> findAll();

    void update(Task changedTask);

    void delete(int id);

    Task findTaskById(int id);

}
