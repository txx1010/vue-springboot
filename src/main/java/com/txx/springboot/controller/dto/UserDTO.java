package com.txx.springboot.controller.dto;

import com.txx.springboot.entity.Menu;
import lombok.Data;

import java.util.List;

/**
 * 接受前端登录请求的参数
 */
@Data
public class UserDTO {
    private Integer id;
    private String username;
    private String email;
    private String code;
    private String password;
    private String nickname;
    private String avatarUrl;
    private String token;
    private String role;
    private Integer majorId;
    private List<Menu> menus;
}
