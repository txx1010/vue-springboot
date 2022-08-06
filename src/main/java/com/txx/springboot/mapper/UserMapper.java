package com.txx.springboot.mapper;


import com.txx.springboot.entity.User;
import org.apache.ibatis.annotations.*;

import java.util.List;

//数据库查询的接口，专门用来和数据库交互用的
@Mapper
public interface UserMapper {
    @Select("SELECT * FROM sys_user")
    List<User> findAll();

    @Insert("INSERT INTO sys_user(username,`password`,nickname,email,phone,address) " +
            "VALUES (#{username},#{password},#{nickname},#{email},#{phone},#{address})")
    int insert(User user);


    int update(User user);

    @Delete("delete from sys_user where id=#{id}")
    Integer deleteById(@Param("id") Integer id);       //@Param("id")里面的id和id=#{id}里面的必须一致
}
