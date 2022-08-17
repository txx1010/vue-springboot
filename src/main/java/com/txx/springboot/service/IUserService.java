package com.txx.springboot.service;

import com.txx.springboot.controller.dto.UserDTO;
import com.txx.springboot.entity.User;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author txx
 * @since 2022-08-12
 */
public interface IUserService extends IService<User> {

    UserDTO login(UserDTO userDTO);

    User register(UserDTO userDTO);
}
