package com.spring_project.nadia.tasks_timer.service;

import com.spring_project.nadia.tasks_timer.model.Role;
import com.spring_project.nadia.tasks_timer.model.User;
import com.spring_project.nadia.tasks_timer.repositories.RoleRepository;
import com.spring_project.nadia.tasks_timer.repositories.UserRepository;
import com.spring_project.nadia.tasks_timer.service.impl.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import java.util.Collections;
import java.util.List;

@Component
public class UserServiceImpl implements UserDetailsService, UserService {

    @Autowired
    UserRepository userRepository;

    @Autowired
    RoleRepository roleRepository;

    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        User user = userRepository.findUserByUsername(username);

        if (user == null) {
            throw new UsernameNotFoundException("User not found");
        }

        return user;
    }

    @Override
    public boolean saveUser(User user) {
        User userFromDB = userRepository.findUserByUsername(user.getUsername());

        if (userFromDB != null) {
            return false;
        }

        user.setRoles(Collections.singleton(new Role(1, "ROLE_USER")));
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        userRepository.save(user);
        return true;
    }

    @Override
    public List<User> findAllUsers(){
        return userRepository.findAll();
    }

    @Override
    public boolean deleteUser(long userId){

        if (userIsNotExist(userId)){
            return false;
        }

        userRepository.delete(userRepository.findUserById(userId));
        return true;
    }

    @Override
    public User findUserByUsername(String username){
        return userRepository.findUserByUsername(username);
    }

    private boolean userIsNotExist(long userId){
        return userRepository.findUserById(userId) == null;
    }

}
