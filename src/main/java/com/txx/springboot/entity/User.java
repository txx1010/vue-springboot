package com.txx.springboot.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
//可以不添加get和set方法（lombok插件）
@NoArgsConstructor
//可以帮助创建无参构造方法
@AllArgsConstructor
//可以帮助创建有参构造方法
public class User {
    private Integer id;
    private String username;
    @JsonIgnore
    private String password;
    private String nickname;
    private String email;
    private String phone;
    private String address;



}
