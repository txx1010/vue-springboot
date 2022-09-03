package com.txx.springboot.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import java.math.BigDecimal;
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
 * @since 2022-09-01
 */
@Getter
@Setter
  @ApiModel(value = "Orders对象", description = "")
public class Orders implements Serializable {

    private static final long serialVersionUID = 1L;

      @TableId(value = "id", type = IdType.AUTO)
      private Integer id;

      private Integer userId;

      @ApiModelProperty("订单编号")
      private String no;

      @ApiModelProperty("名称")
      private String name;

      @ApiModelProperty("订单时间")
      private String time;

      @ApiModelProperty("支付状态")
      private String state;

      //支付时间
      private String paymentTime;
      //支付宝订单流水号
      private String alipayNo;

      //退款时间
      private String returnTime;

      @ApiModelProperty("订单总价")
      private BigDecimal total;



}
