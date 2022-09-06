package com.txx.springboot.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.txx.springboot.controller.dto.UserDTO;
import com.txx.springboot.controller.dto.UserPasswordDTO;
import com.txx.springboot.entity.User;
import com.baomidou.mybatisplus.extension.service.IService;

import javax.mail.MessagingException;

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

    void updatePassword(UserPasswordDTO userPasswordDTO);

    Page<User> findPage(Page<User> page, String username, String email, String address);

    UserDTO loginEmail(UserDTO userDTO);

    void sendEmailCode(String email, Integer type) throws MessagingException;
}
