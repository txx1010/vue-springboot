package com.txx.springboot.controller;

import com.txx.springboot.entity.User;
import com.txx.springboot.mapper.UserMapper;
import com.txx.springboot.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    public List<User> findall(){
        List<User> all = userMapper.findAll();
        return all;
    }
    @DeleteMapping("/{id}")
    public Integer delete(@PathVariable Integer id){    //pathVariable表示从url获得id
        return userMapper.deleteById(id);
    }

    //分页查询
    //接口路径：/user/page
    //@RequestParam接受来自url里面的pageNum=?和pageSize=?
    //limit的第一个参数=(pageNum-1)*pageSize
    @GetMapping("/page")
    public Map<String,Object> findPage(@RequestParam Integer pageNum,
                                       @RequestParam Integer pageSize,
                                       @RequestParam String username
                                   ){
        pageNum=(pageNum-1)*pageSize;
        username="%"+username+"%";
        List<User> data=userMapper.selectPage(pageNum,pageSize,username);
        Integer total = userMapper.selectTotal(username);
        Map<String,Object> res=new HashMap<>();
        res.put("total",total);
        res.put("data",data);
        return res;
    }
}
