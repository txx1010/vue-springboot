package com.txx.springboot.mapper;

import com.txx.springboot.entity.Orders;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author txx
 * @since 2022-09-01
 */
public interface OrdersMapper extends BaseMapper<Orders> {

    @Update("update orders set state = #{state},  payment_time = #{paymentTime}, alipay_no = #{alipayNo} where no = #{no}")
    int updateState(@Param("no") String no, @Param("state") String state,  @Param("paymentTime")String gmtPayment,
                     @Param("alipayNo")String alipayTradeNo);

    @Update("update orders set state = #{state} ,return_time =#{time} where no = #{no}")
    int updatePayState(@Param("no") String no, @Param("state") String state, @Param("time") String time);

    @Select("select * from orders where no =#{tranceNo}")
    Orders getByNo(String traceNo);
}
