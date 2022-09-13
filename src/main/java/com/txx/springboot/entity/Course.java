package com.txx.springboot.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

/**
 * <p>
 * 
 * </p>
 *
 * @author txx
 * @since 2022-08-27
 */
@Getter
@Setter
@ApiModel(value = "Course对象", description = "")
public class Course implements Serializable {

    private static final long serialVersionUID = 1L;

      @ApiModelProperty("id")
      @TableId(value = "id", type = IdType.AUTO)
      private Integer id;

      @ApiModelProperty("编号")
      private Integer no;

      @ApiModelProperty("课程名称")
      private String name;

      @ApiModelProperty("学分")
      private Integer score;

      @ApiModelProperty("上课时间")
      private String times;

      @ApiModelProperty("教室")
      private String room;

//      @ApiModelProperty("是否开课")
//      private Boolean state;

      @ApiModelProperty("是否必修")
      private String type;

      @ApiModelProperty("授课老师id")
      private String teacherId;

      @TableField(exist = false)
      private String teacher;


}
