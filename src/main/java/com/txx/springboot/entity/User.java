package com.txx.springboot.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data//可以不添加get和set方法（lombok插件）
@NoArgsConstructor//可以帮助创建无参构造方法
@AllArgsConstructor//可以帮助创建有参构造方法
@TableName(value = "sys_user")
public class User {

    @TableId(type= IdType.AUTO)
    private Integer id;
    private String username;
    @JsonIgnore
    private String password;
    private String nickname;
    private String email;
    private String phone;
    private String address;

    @TableField(value = "avatar_url")//通过指定别名，可以让数据库中的名字和实体类的名字不一致
    private String avatarUrl;

}
