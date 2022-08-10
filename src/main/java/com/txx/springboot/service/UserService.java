package com.txx.springboot.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.txx.springboot.entity.User;
import com.txx.springboot.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService extends ServiceImpl<UserMapper,User> { //使用mybaitsplus里面的方法，必须继承ServiceImpl<UserMapper,User>
    public boolean saveUser(User user) {
//        if(user.getId()==null){
//            return save(user);//mybaitsplus提供的方法，表示插入数据
//        }else{
//            return updateById(user);
//        }
        return saveOrUpdate(user);
    }

//    @Autowired
//    private UserMapper userMapper;
//
//    public int save(User user){
    //save函数不能用了，因为mybaitsplus里面有同名的save函数
//        if(user.getId()==null){
//            return userMapper.insert(user);
//        }else{
//            return userMapper.update(user);
//        }
//
//    }
}
