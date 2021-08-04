package com.spring_project.nadia.tasks_timer.service;

import com.spring_project.nadia.tasks_timer.model.*;
import com.spring_project.nadia.tasks_timer.model.util.*;
import com.spring_project.nadia.tasks_timer.repositories.*;
import com.spring_project.nadia.tasks_timer.service.impl.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.util.StopWatch;

import java.util.*;

@Component
public class TaskTimerServiceImpl implements TaskTimerService {

    private StopWatch stopWatch = new StopWatch();

    @Autowired
    private TimeSpentRepository timeSpentRepository;

    @Autowired
    private TaskRepository taskRepository;

//    public Time затраченное время за один день;//а это
//    public Time sumTime;// и это нужно высчитать в логике программы и предоставить пользователю

    @Override
    public void run(int taskId) {

        stopWatch.start();


        // > long.MAX_VALUE
    }

    @Override
    public void stop(int taskId) {
        stopWatch.stop();
        saveTime(taskId);
    }

    @Override
    public Time getTotalTime(Task task) {

        return TimeCalculator.calculateTotalTime(task);
    }

    private void saveTime(int taskId) {

        TimeSpent timeSpent = new TimeSpent();
        timeSpent.setTask(taskRepository.findTaskById(taskId));

        Date currentDate = new Date();
        timeSpent.setDate(currentDate);

        long seconds = TimeCalculator.calculateSecondsFromMillis(stopWatch.getTotalTimeMillis());
        timeSpent.setTime(TimeCalculator.calculateOrdinaryTimeFromSeconds(seconds));
//        timeSpent.setSeconds(seconds);

        timeSpentRepository.save(timeSpent);
    }
}
