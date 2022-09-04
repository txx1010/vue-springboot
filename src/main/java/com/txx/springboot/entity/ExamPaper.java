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
 * 多对多，异常考试对应多个组卷
 * </p>
 *
 * @author txx
 * @since 2022-09-04
 */
@Getter
@Setter
  @TableName("exam_paper")
@ApiModel(value = "ExamPaper对象", description = "多对多，异常考试对应多个组卷")
public class ExamPaper implements Serializable {

    private static final long serialVersionUID = 1L;

      @TableId(value = "id", type = IdType.AUTO)
      private Integer id;

      @ApiModelProperty("考试id")
      private Integer examId;

      @ApiModelProperty("试卷id")
      private Integer paperId;


}
