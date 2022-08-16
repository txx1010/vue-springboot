package com.txx.springboot.service.impl;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.log.Log;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.txx.springboot.common.Constants;
import com.txx.springboot.config.dto.UserDTO;
import com.txx.springboot.entity.User;
import com.txx.springboot.exception.ServiceException;
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
    public UserDTO login(UserDTO userDTO) {
        User one = getUserInfo(userDTO);
        //业务异常
        if(one!=null){
            BeanUtil.copyProperties(one,userDTO,true);
            return userDTO;
        }
        else {
            throw new ServiceException(Constants.CODE_600,"用户名或密码错误");//没找到用户
        }
    }

    @Override
    public User register(UserDTO userDTO) {
        User one = getUserInfo(userDTO);
        if(one ==null){
            one =new User();
            BeanUtil.copyProperties(userDTO,one,true);
            save(one);  //把copy完之后的用户
        }else {
            throw new ServiceException(Constants.CODE_600,"用户已存在");
        }
        return one;
    }

    private User getUserInfo(UserDTO userDTO){
        QueryWrapper<User> queryWrapper=new QueryWrapper<>();
        queryWrapper.eq("username",userDTO.getUsername());
        queryWrapper.eq("password",userDTO.getPassword());
        User one;

        //系统异常
        try{
            one=getOne(queryWrapper); //从数据库查询用户信息
        } catch (Exception e){
            LOG.error(e);
            throw new ServiceException(Constants.CODE_500,"系统错误");//sql查询问题，例如脏数据等属于系统问题
        }
        return  one;
    }


}
