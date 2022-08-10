package com.txx.springboot.mapper;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.txx.springboot.entity.User;
import org.apache.ibatis.annotations.*;

import java.util.List;

//数据库查询的接口，专门用来和数据库交互用的
//@Mapper
public interface UserMapper extends BaseMapper<User> {
//    @Select("SELECT * FROM sys_user")
//    List<User> findAll();
//
//    @Insert("INSERT INTO sys_user(username,`password`,nickname,email,phone,address) " +
//            "VALUES (#{username},#{password},#{nickname},#{email},#{phone},#{address})")
//    int insert(User user);
//
//
//    int update(User user);
//
//    @Delete("delete from sys_user where id=#{id}")
//    Integer deleteById(@Param("id") Integer id);       //@Param("id")里面的id和id=#{id}里面的必须一致
//
//    @Select("select * from sys_user where username like #{username} limit #{pageNum},#{pageSize}")//从第pageNum条数据起，查找pageSize条。
//    List<User> selectPage(Integer pageNum, Integer pageSize, String username);
//
//    @Select("select count(*) from sys_user where username like concat('%',#{username},'%')")//查询出sys_user里面符合username总条数
//    Integer selectTotal(String username);
}
