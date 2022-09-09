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
 * @since 2022-09-04
 */
@Getter
@Setter
@ApiModel(value = "Exam对象", description = "")
public class Exam implements Serializable {

    private static final long serialVersionUID = 1L;

      @TableId(value = "id", type = IdType.AUTO)
      private Integer id;

      private Integer courseId;

      private Integer duration;

      @ApiModelProperty("考试名称")
      private String name;

      @ApiModelProperty("教室")
      private String room;

      @ApiModelProperty("考试时间")
      private String time;

      @ApiModelProperty("老师")
      private String teacher;

      @ApiModelProperty("考试状态")
      private String state;

      @TableField(exist = false)
      private Boolean enable;


}
