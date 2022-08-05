package com.txx.springboot.mapper;


import com.txx.springboot.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

//数据库查询的接口，专门用来和数据库交互用的
@Mapper
public interface UserMapper {
    @Select("SELECT * FROM sys_user")
    List<User> findAll();

}
