package com.txx.springboot.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * <p>
 * 
 * </p>
 *
 * @author txx
 * @since 2022-08-12
 */
@Getter
@Setter
@TableName("sys_user")
@ApiModel(value = "User对象", description = "")
@ToString
public class User implements Serializable {

    private static final long serialVersionUID = 1L;

      @ApiModelProperty("id")
      @TableId(value = "id", type = IdType.AUTO)
      private Integer id;

      @ApiModelProperty("用户名")
      private String username;

      @ApiModelProperty("密码")
      private String password;

      @ApiModelProperty("昵称")
      private String nickname;

      @ApiModelProperty(" 邮箱")
      private String email;

      @ApiModelProperty("电话")
      private String phone;

      @ApiModelProperty("地址")
      private String address;

      @ApiModelProperty("创建时间	")
      private Date createTime;

      @ApiModelProperty("头像")
      private String avatarUrl;

      @ApiModelProperty("角色")
      private String role;

      @TableField(exist = false)
      private List<Course> courses;

      @TableField(exist = false)
      private List<Course> stuCourses;
//  @Override
//  public String toString() {
//    return "User{" +
//            "id=" + id +
//            ", username='" + username + '\'' +
//            ", password='" + password + '\'' +
//            ", nickname='" + nickname + '\'' +
//            ", email='" + email + '\'' +
//            ", phone='" + phone + '\'' +
//            ", address='" + address + '\'' +
//            ", createTime=" + createTime +
//            ", avatarUrl='" + avatarUrl + '\'' +
//            '}';
//  }
}
