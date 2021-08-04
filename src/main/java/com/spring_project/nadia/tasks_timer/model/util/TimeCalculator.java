package com.spring_project.nadia.tasks_timer.model.util;

import com.spring_project.nadia.tasks_timer.model.*;

public class TimeCalculator {

    private TimeCalculator() {
    }

    public static long calculateSecondsFromMillis(long millis) {

        return millis / 1_000;//
    }

    public static Time calculateOrdinaryTimeFromSeconds(long totalSeconds) {

        int hours;
        int minutes;
        int seconds;

        hours = (int) totalSeconds / 3600; //волшебные числа вынести в константы
        minutes = (int) (totalSeconds % 3600) / 60;//
        seconds = (int) (totalSeconds % 3600) % 60;//

        return new Time(hours, minutes, seconds);
    }

    public static Time calculateTotalTime(Task task) {

        int hours = 0;
        int minutes = 0;
        int seconds = 0;

        Time time;

        for (TimeSpent timeSpent : task.getTimeSpent()) {

            time = timeSpent.getTime();

            hours += time.getHours();
            minutes += time.getMinutes();
            seconds += time.getSeconds();

            if (seconds > 60) {//
                minutes += seconds / 60;//
                seconds %= 60;//
            }

            if (minutes > 60) {//в отдельный метод
                hours += minutes / 60;//
                minutes %= 60;//
            }
        }

        return new Time(hours, minutes, seconds);
    }
}
