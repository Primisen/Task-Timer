package com.spring_project.nadia.tasks_timer.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import java.util.Date;

@Entity
public class TimeSpent {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    //    private long seconds;
    @OneToOne (cascade = CascadeType.ALL)
    private Time time;

    //    private Calendar date;
    private Date date;

    //    @ManyToOne(cascade = CascadeType.ALL)
    @ManyToOne(cascade = CascadeType.MERGE)
    private Task task;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

//    public long getSeconds() {
//        return seconds;
//    }
//
//    public void setSeconds(long seconds) {
//        this.seconds = seconds;
//    }


    public Time getTime() {
        return time;
    }

    public void setTime(Time time) {
        this.time = time;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Task getTask() {
        return task;
    }

    public void setTask(Task task) {
        this.task = task;
    }

    @Override
    public boolean equals(Object o) {

        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }

        TimeSpent timeSpent = (TimeSpent) o;

        return id == timeSpent.id
                && time.equals(time)
                && date == timeSpent.date;
    }

    @Override
    public int hashCode() {
        int result = 37;
        result = (int) (result * id + (time == null ? 0 : time.hashCode()) + (date == null ? 0 : date.hashCode()));
        return result;
    }
}
