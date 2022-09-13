package com.txx.springboot.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
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
 * @since 2022-09-12
 */
@Getter
@Setter
@TableName("major_course")
@ApiModel(value = "MajorCourse对象", description = "")
public class MajorCourse implements Serializable {

    private static final long serialVersionUID = 1L;

      @TableId(value = "id", type = IdType.AUTO)
      private Integer  id;

      @ApiModelProperty("专业id")
      private Integer majorId;

      @ApiModelProperty("课程id")
      private Integer courseId;

      @ApiModelProperty("日期")
      private String weekDay;

      @ApiModelProperty("第几节")
      private String section;


}
