package com.txx.springboot.controller;

import com.txx.springboot.entity.User;
import com.txx.springboot.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class UserController {
    @Autowired
    private UserMapper userMapper;
    @GetMapping("/")
    public List<User> index(){
        List<User> all = userMapper.findAll();
        return all;
    }
}
