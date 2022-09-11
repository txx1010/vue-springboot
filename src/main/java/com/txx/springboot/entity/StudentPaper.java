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
 * @since 2022-09-11
 */
@Getter
@Setter
  @TableName("student_paper")
@ApiModel(value = "StudentPaper对象", description = "")
public class StudentPaper implements Serializable {

    private static final long serialVersionUID = 1L;

      @TableId(value = "id", type = IdType.AUTO)
      private Integer id;

      @ApiModelProperty("考试id")
      private Integer examId;

      @ApiModelProperty("试卷内容")
      private String paper;

      @ApiModelProperty("学生id")
      private Integer userId;

      @ApiModelProperty("提交时间")
      private String time;

      @ApiModelProperty("得分")
      private Integer score;


}
