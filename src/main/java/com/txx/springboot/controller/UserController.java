package com.txx.springboot.controller;

import com.txx.springboot.entity.User;
import com.txx.springboot.mapper.UserMapper;
import com.txx.springboot.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserMapper userMapper;

    @Autowired
    private UserService userService;

    @PostMapping
    //新增和修改都是post接口
    public Integer save(@RequestBody User user){//前端传过来的json对象转化成为java类型的User对象
        //新增和更新都在这个userService.save()方法里面
        return userService.save(user);
    }

    @GetMapping
    //查询所有数据
    public List<User> index(){
        List<User> all = userMapper.findAll();
        return all;
    }
    @DeleteMapping("/{id}")
    public Integer delete(@PathVariable Integer id){    //pathVariable表示从url获得id
        return userMapper.deleteById(id);
    }
}
