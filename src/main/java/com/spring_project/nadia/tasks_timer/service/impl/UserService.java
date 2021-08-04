package com.spring_project.nadia.tasks_timer.service.impl;

import com.spring_project.nadia.tasks_timer.model.User;

import java.util.List;

public interface UserService {
    boolean saveUser(User user);

    List<User> findAllUsers();

    boolean deleteUser(long userId);

    User findUserByUsername(String username);
}
