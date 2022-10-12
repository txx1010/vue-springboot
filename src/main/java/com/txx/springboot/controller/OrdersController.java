package com.txx.springboot.controller;


import cn.hutool.core.date.DateUtil;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.txx.springboot.entity.Goods;
import com.txx.springboot.entity.User;
import com.txx.springboot.exception.ServiceException;
import com.txx.springboot.service.IGoodsService;
import com.txx.springboot.utils.TokenUtils;
import org.springframework.web.bind.annotation.*;
import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.txx.springboot.common.Result;

import com.txx.springboot.service.IOrdersService;
import com.txx.springboot.entity.Orders;

import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author txx
 * @since 2022-09-01
 */
@RestController
@RequestMapping("/orders")
public class OrdersController {
    
        @Resource
        private IOrdersService ordersService;

        @Resource
        private IGoodsService goodsService;

        // 新增或者更新
        @PostMapping
        public Result save(@RequestBody Orders orders) {
            ordersService.saveOrUpdate(orders);
                return Result.success();
        }

    @PostMapping("/{goodsId}/{num}")
    public Result createOrder(@PathVariable Integer goodsId, @PathVariable Integer num) {
        Goods goods = goodsService.getById(goodsId);
        if (goods == null) {
            throw new ServiceException("-1", "未找到商品");
        }
        User currentUser = TokenUtils.getCurrentUser();
        Integer userId = currentUser.getId();

        Orders orders = new Orders();
        orders.setName(goods.getName());
        orders.setNo(DateUtil.format(new Date(), "yyyyMMdd") + System.currentTimeMillis());
        orders.setTime(DateUtil.now());
        orders.setUserId(userId);
        orders.setTotal(goods.getPrice().multiply(BigDecimal.valueOf(num)));
        ordersService.save(orders);
        return Result.success();
    }



    @DeleteMapping("/{id}")
        public Result delete(@PathVariable Integer id) {
            ordersService.removeById(id);
                return Result.success();
                }

        @PostMapping("/del/batch")
        public Result deleteBatch(@RequestBody List<Integer> ids) {
            ordersService.removeByIds(ids);
                return Result.success();
                }

        @GetMapping
        public Result findAll() {
                return Result.success(ordersService.list());
                }

        @GetMapping("/{id}")
        public Result findOne(@PathVariable Integer id) {
                return Result.success(ordersService.getById(id));
                }

        @GetMapping("/page")
        public Result findPage(@RequestParam Integer pageNum,
        @RequestParam Integer pageSize) {
                QueryWrapper<Orders> queryWrapper = new QueryWrapper<>();
                queryWrapper.orderByDesc("id");
                return Result.success(ordersService.page(new Page<>(pageNum, pageSize), queryWrapper));
                }

        }

