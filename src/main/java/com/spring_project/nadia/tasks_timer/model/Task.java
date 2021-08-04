package com.spring_project.nadia.tasks_timer.model;

import org.hibernate.annotations.Cascade;

import javax.persistence.*;
import java.util.Set;

@Entity
public class Task {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    private String name;

    private String description;

    @OneToMany(mappedBy = "task", fetch = FetchType.EAGER)
    private Set<TimeSpent> timeSpent;

    @ManyToOne(fetch = FetchType.EAGER)
    private User user;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Set<TimeSpent> getTimeSpent() {
        return timeSpent;
    }

    public void setTimeSpent(Set<TimeSpent> timeSpent) {
        this.timeSpent = timeSpent;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    //equals and hashcode
}
