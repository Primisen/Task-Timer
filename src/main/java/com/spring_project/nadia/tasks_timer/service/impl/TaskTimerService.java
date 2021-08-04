package com.spring_project.nadia.tasks_timer.service.impl;


import com.spring_project.nadia.tasks_timer.model.*;

public interface TaskTimerService {
    void run(int taskId);

    void stop(int taskId);

    Time getTotalTime(Task task);
}
