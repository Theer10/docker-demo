package com.example.demo.web;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.dto.User;

@RestController
@RequestMapping("/user")
public class UserController {
    List<User> users = List.of(new User("Theerthan", "27-01-2004"),
    new User("Kailash", "17-02-2004"),
    new User("Raven", "7-00-2000"));
@GetMapping
public List<User> getAllUsers(){
    return users;
}
}


