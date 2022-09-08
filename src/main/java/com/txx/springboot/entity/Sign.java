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
 * @since 2022-09-07
 */
@Getter
@Setter
@ApiModel(value = "Sign对象", description = "")
public class Sign implements Serializable {

    private static final long serialVersionUID = 1L;

      @TableId(value = "id", type = IdType.AUTO)
      private Integer id;

      @ApiModelProperty("考试id")
      private Integer examId;

      @ApiModelProperty("学生id")
      private Integer userId;

      @ApiModelProperty("审核状态")
      private String state;


}
