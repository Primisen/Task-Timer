package com.spring_project.nadia.tasks_timer.controller;

import com.spring_project.nadia.tasks_timer.service.impl.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

@Controller
public class TaskTimerController {

    @Autowired
    private TaskTimerService taskTimerService;

    @PostMapping("/task/start/{id}")
    public String start(@PathVariable("id") int taskId) {

        taskTimerService.run(taskId);

        return "redirect:/task/" + taskId;
    }

    @PostMapping("/task/stop/{id}")
    public String stop(@PathVariable("id") int taskId) {

        taskTimerService.stop(taskId);

        return "redirect:/task/" + taskId;
    }
}
