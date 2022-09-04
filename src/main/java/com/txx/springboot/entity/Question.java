package com.txx.springboot.entity;

import com.baomidou.mybatisplus.annotation.IdType;
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
 * @since 2022-09-03
 */
@Getter
@Setter
  @ApiModel(value = "Question对象", description = "")
public class Question implements Serializable {

    private static final long serialVersionUID = 1L;

      @TableId(value = "id", type = IdType.AUTO)
      private Integer id;

      @ApiModelProperty("名称")
      private String name;

      @ApiModelProperty("类型：1选择，2判断，3问答")
      private Integer type;

      @ApiModelProperty("a选项")
      private String a;

      @ApiModelProperty("b选项")
      private String b;

      @ApiModelProperty("c选项")
      private String c;

      @ApiModelProperty("d选项")
      private String d;

      @ApiModelProperty("分数")
      private String score;

      @ApiModelProperty("答案")
      private String answer;

      @ApiModelProperty("解析")
      private String detail;

      @ApiModelProperty("出题人")
      private Integer userId;

      private Integer CourseId;

      @ApiModelProperty("出题时间")
      private String time;


}
