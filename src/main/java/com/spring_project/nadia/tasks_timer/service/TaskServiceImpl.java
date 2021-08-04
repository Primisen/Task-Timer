package com.spring_project.nadia.tasks_timer.service;

import com.spring_project.nadia.tasks_timer.model.Task;
import com.spring_project.nadia.tasks_timer.repositories.TaskRepository;
import com.spring_project.nadia.tasks_timer.service.impl.TaskService;
import com.spring_project.nadia.tasks_timer.service.impl.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class TaskServiceImpl implements TaskService {

    @Autowired
    public TaskRepository taskRepository;

    @Autowired
    public UserService userService;

    @Override
    public void addTask(Task task) {

//        Task task = new Task();
//        task.setName(name);
//        task.setDescription(description);

        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String username;

        if (principal instanceof UserDetails) {
            username = ((UserDetails)principal).getUsername();
        } else {
            username = principal.toString();
        }

        task.setUser(userService.findUserByUsername(username));

        taskRepository.save(task);//и что, больше никакой логики, что ли?)
    }

    @Override
    public Task findByName(Task task) {
        return taskRepository.findTaskByName(task.getName());
    }

    @Override
    public List<Task> findAll(){
        return taskRepository.findAll();
    }

    @Override
    public void update(Task changedTask) {

        Task task = taskRepository.findTaskById(changedTask.getId());
        task.setName(changedTask.getName());
        task.setDescription(changedTask.getDescription());
        taskRepository.save(task);
    }

    @Override
    public void delete(int id) {
        taskRepository.deleteById(id);
    }

    @Override
    public Task findTaskById(int id){
        return taskRepository.findTaskById(id);
    }
}
