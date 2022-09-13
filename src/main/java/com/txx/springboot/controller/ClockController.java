package com.txx.springboot.controller;


import cn.hutool.core.date.DateUtil;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.web.bind.annotation.*;
import javax.annotation.Resource;
import java.util.List;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.txx.springboot.common.Result;

import com.txx.springboot.service.IClockService;
import com.txx.springboot.entity.Clock;

import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author txx
 * @since 2022-09-14
 */
@RestController
@RequestMapping("/clock")
public class ClockController {
    
    @Resource
    private IClockService clockService;

    // 新增或者更新
    @PostMapping
    public Result save(@RequestBody Clock clock) {
        if (clock.getId() == null) {  // 新增打卡
            String today = DateUtil.today();
            QueryWrapper<Clock> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("user", clock.getUser());
            queryWrapper.eq("time", today);
            Clock one = clockService.getOne(queryWrapper);
            if (one != null) {  // 打过卡了
                return Result.error("-1", "您已打过卡");
            }
            clock.setTime(today);
        }
        clockService.saveOrUpdate(clock);
        return Result.success();
    }

    @DeleteMapping("/{id}")
    public Result delete(@PathVariable Integer id) {
        clockService.removeById(id);
            return Result.success();
            }

    @PostMapping("/del/batch")
    public Result deleteBatch(@RequestBody List<Integer> ids) {
        clockService.removeByIds(ids);
            return Result.success();
            }

    @GetMapping
    public Result findAll() {
            return Result.success(clockService.list());
            }

    @GetMapping("/{id}")
    public Result findOne(@PathVariable Integer id) {
            return Result.success(clockService.getById(id));
            }

    @GetMapping("/page")
    public Result findPage(@RequestParam Integer pageNum,
    @RequestParam Integer pageSize) {
            QueryWrapper<Clock> queryWrapper = new QueryWrapper<>();
            queryWrapper.orderByDesc("id");
            return Result.success(clockService.page(new Page<>(pageNum, pageSize), queryWrapper));
            }

        }

