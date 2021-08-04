package com.spring_project.nadia.tasks_timer.repositories;

import com.spring_project.nadia.tasks_timer.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {

    User findUserByUsername(String username);
    User findUserById(long userId);
}
