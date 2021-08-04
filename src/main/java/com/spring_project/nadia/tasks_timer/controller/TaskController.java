package com.spring_project.nadia.tasks_timer.controller;

import com.spring_project.nadia.tasks_timer.model.Task;
import com.spring_project.nadia.tasks_timer.model.TimeSpent;
import com.spring_project.nadia.tasks_timer.model.util.*;
import com.spring_project.nadia.tasks_timer.service.impl.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.HashSet;

@Controller
public class TaskController {

    @Autowired
    public TaskService taskService;

    @Autowired
    public TaskTimerService taskTimerService;

    @GetMapping("/task/{id}")
    public String task(@PathVariable ("id") int taskId, Model model){

        Task task = taskService.findTaskById(taskId);

        model.addAttribute("task", task);
        model.addAttribute("taskTimer",task.getTimeSpent());
        model.addAttribute("totalTime", taskTimerService.getTotalTime(task));

        return "task";
    }

    @GetMapping("/tasks")
    public String tasksList(Model model){
        model.addAttribute("tasks", taskService.findAll());
        return "tasks_list";
    }

    @PostMapping("/task/delete/{id}")//post -> delete; url по restful'у?)
    public String deleteTask(@PathVariable("id") int taskId){
        taskService.delete(taskId);

        return "redirect:/tasks";
    }

    @GetMapping("/add")
    public String getPage(Model model){

        model.addAttribute("newTask", new Task());
        return "add_task";
    }

    @PostMapping("/add")
    public String addTask(Model model, @ModelAttribute("newTask") Task task, BindingResult bindingResult){

//        task.setTimeSpent(new HashSet<TimeSpent>());
//model.
        taskService.addTask(task);

        return "redirect:/tasks";
    }

    @GetMapping("/task/change/{id}")
    public String change(@PathVariable("id") int taskId, Model model){

        model.addAttribute("taskForChange", taskService.findTaskById(taskId));

        return "change";
    }

    @PostMapping("/task/change/{id}")
    public String putTask(@PathVariable("id") int taskId, @ModelAttribute("taskForChange") Task task){

        taskService.update(task);

        return "redirect:/task/" + taskId;
    }

}
