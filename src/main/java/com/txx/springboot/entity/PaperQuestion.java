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
 * 多对多的试卷与题目映射表
 * </p>
 *
 * @author txx
 * @since 2022-09-04
 */
@Getter
@Setter
  @TableName("paper_question")
@ApiModel(value = "PaperQuestion对象", description = "多对多的试卷与题目映射表")
public class PaperQuestion implements Serializable {

    private static final long serialVersionUID = 1L;

      @TableId(value = "id", type = IdType.AUTO)
      private Integer id;

      @ApiModelProperty("试卷id")
      private Integer paperId;

      @ApiModelProperty("题目id")
      private Integer questionId;


}
