package com.txx.springboot.controller;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.web.bind.annotation.*;
import javax.annotation.Resource;
import java.util.List;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.txx.springboot.common.Result;

import com.txx.springboot.service.ISignService;
import com.txx.springboot.entity.Sign;

import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author txx
 * @since 2022-09-07
 */
@RestController
@RequestMapping("/sign")
        public class SignController {
    
@Resource
private ISignService signService;

// 新增或者更新
@PostMapping
public Result save(@RequestBody Sign sign) {
    signService.saveOrUpdate(sign);
        return Result.success();
        }

@DeleteMapping("/{id}")
public Result delete(@PathVariable Integer id) {
    signService.removeById(id);
        return Result.success();
        }

@PostMapping("/del/batch")
public Result deleteBatch(@RequestBody List<Integer> ids) {
    signService.removeByIds(ids);
        return Result.success();
        }

@GetMapping
public Result findAll() {
        return Result.success(signService.list());
        }

@GetMapping("/{id}")
public Result findOne(@PathVariable Integer id) {
        return Result.success(signService.getById(id));
        }

@GetMapping("/page")
public Result findPage(@RequestParam Integer pageNum,
@RequestParam Integer pageSize) {
        QueryWrapper<Sign> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByDesc("id");
        return Result.success(signService.page(new Page<>(pageNum, pageSize), queryWrapper));
        }

        }

