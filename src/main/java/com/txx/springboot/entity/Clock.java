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
 * @since 2022-09-14
 */
@Getter
@Setter
  @ApiModel(value = "Clock对象", description = "")
public class Clock implements Serializable {

    private static final long serialVersionUID = 1L;

      @TableId(value = "id", type = IdType.AUTO)
      private Integer id;

      @ApiModelProperty("用户名称")
      private String user;

      @ApiModelProperty("打卡位置")
      private String location;

      @ApiModelProperty("打卡时间")
      private String time;

      @ApiModelProperty("备注")
      private String comment;


}
