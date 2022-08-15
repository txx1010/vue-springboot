package com.txx.springboot.service.impl;

import cn.hutool.log.Log;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.txx.springboot.config.dto.UserDTO;
import com.txx.springboot.entity.User;
import com.txx.springboot.mapper.UserMapper;
import com.txx.springboot.service.IUserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author txx
 * @since 2022-08-12
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements IUserService {

    private static final Log LOG= Log.get();
    @Override
    public boolean login(UserDTO userDTO) {
        QueryWrapper<User> queryWrapper=new QueryWrapper<>();
        queryWrapper.eq("username",userDTO.getUsername());
        queryWrapper.eq("password",userDTO.getPassword());
        try{
            User one =getOne(queryWrapper);
            return one!=null;
        } catch (Exception e){
            LOG.error(e);
            return false;   //查出多条数据也不合理，也返回一个false出来
        }
    }

}
