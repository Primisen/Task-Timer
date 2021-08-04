package com.spring_project.nadia.tasks_timer.controller;

import com.spring_project.nadia.tasks_timer.service.impl.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AdminController {

    @Autowired
    public UserService userService;

    @GetMapping("/admin")
    public String showAdminPage(Model model) {

        model.addAttribute("users", userService.findAllUsers());
        return "admin_page";
    }

    @PostMapping("/users/delete/{id}")
    public String deleteUser(@PathVariable("id") long userId, Model model) {

        if (!userService.deleteUser(userId)) {
            model.addAttribute("deleteOperationStatusMessage", "User with this id doesn't exist");

        } else {
            model.addAttribute("deleteOperationStatusMessage", "Successfully!");
        }

        return "redirect:/admin";
    }

}
