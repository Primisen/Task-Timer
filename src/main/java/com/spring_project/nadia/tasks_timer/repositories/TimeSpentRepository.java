package com.spring_project.nadia.tasks_timer.repositories;

import com.spring_project.nadia.tasks_timer.model.TimeSpent;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TimeSpentRepository extends JpaRepository<TimeSpent, Long> {
}
