package com.spring_project.nadia.tasks_timer.repositories;

import com.spring_project.nadia.tasks_timer.model.Task;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface TaskRepository extends CrudRepository<Task, Integer> {

    Task findTaskById(int id);
    Task findTaskByName(String name);
    List<Task> findAll();
}
