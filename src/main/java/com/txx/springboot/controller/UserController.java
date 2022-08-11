package com.txx.springboot.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.txx.springboot.entity.User;
import com.txx.springboot.mapper.UserMapper;
import com.txx.springboot.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/user")
public class UserController {
//    @Autowired
//    private UserMapper userMapper;

    @Autowired
    private UserService userService;

    @PostMapping
    //新增和修改都是post接口
    public boolean save(@RequestBody User user){//前端传过来的json对象转化成为java类型的User对象
        //新增和更新都在这个userService.save()方法里面
        return userService.saveUser(user);
    }

    @GetMapping
    //查询所有数据
    public List<User> findall(){
//        List<User> all = userMapper.findAll();
//        return all;
        //不自己写接口了，直接调用userservice里面mybaitsplus里面集成的方法
        return userService.list();
    }
    @DeleteMapping("/{id}")
    public boolean delete(@PathVariable Integer id){    //pathVariable表示从url获得id
        //return userMapper.deleteById(id);
        return  userService.removeById(id);
    }

    @PostMapping ("/del/batch")
    public boolean deleteBatch(@RequestBody List<Integer> ids){    //类似的传[1,2,3]这样的数据
        //return userMapper.deleteById(id);
        return  userService.removeByIds(ids);
    }

    //分页查询
    //接口路径：/user/page
    //@RequestParam接受来自url里面的pageNum=?和pageSize=?
    //limit的第一个参数=(pageNum-1)*pageSize
//    @GetMapping("/page")
//    public Map<String,Object> findPage(@RequestParam Integer pageNum,
//                                       @RequestParam Integer pageSize,
//                                       @RequestParam String username
//                                   ){
//        pageNum=(pageNum-1)*pageSize;
//        username="%"+username+"%";
//        List<User> data=userMapper.selectPage(pageNum,pageSize,username);
//        Integer total = userMapper.selectTotal(username);
//        Map<String,Object> res=new HashMap<>();
//        res.put("total",total);
//        res.put("data",data);
//        return res;
//    }

    //分页查询--mybaits-plus的方式实现分页查询
    @GetMapping("/page")
    public IPage<User> findPage(@RequestParam Integer pageNum,
                                @RequestParam Integer pageSize,
                                @RequestParam(defaultValue = "") String username,
                                @RequestParam(defaultValue = "") String nickname,
                                @RequestParam(defaultValue = "")String address
                                ){
        IPage<User> page = new Page<>(pageNum,pageSize);
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        if(!"".equals(username)){
            queryWrapper.like("username",username);
        }
        if (!"".equals(nickname)){
            queryWrapper.like("nickname",nickname);
        }
        if (!"".equals(address)){
            queryWrapper.like("address",address);
        }
        queryWrapper.orderByDesc("id");
        return userService.page(page,queryWrapper);
    }

}
