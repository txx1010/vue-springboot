package com.txx.springboot.controller;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.web.bind.annotation.*;
import javax.annotation.Resource;
import java.util.List;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.txx.springboot.common.Result;

import com.txx.springboot.service.IPaperQuestionService;
import com.txx.springboot.entity.PaperQuestion;

import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 * 多对多的试卷与题目映射表 前端控制器
 * </p>
 *
 * @author txx
 * @since 2022-09-04
 */
@RestController
@RequestMapping("/paper-question")
        public class PaperQuestionController {
    
@Resource
private IPaperQuestionService paperQuestionService;

// 新增或者更新
@PostMapping
public Result save(@RequestBody PaperQuestion paperQuestion) {
    paperQuestionService.saveOrUpdate(paperQuestion);
        return Result.success();
        }

@DeleteMapping("/{id}")
public Result delete(@PathVariable Integer id) {
    paperQuestionService.removeById(id);
        return Result.success();
        }

@PostMapping("/del/batch")
public Result deleteBatch(@RequestBody List<Integer> ids) {
    paperQuestionService.removeByIds(ids);
        return Result.success();
        }

@GetMapping
public Result findAll() {
        return Result.success(paperQuestionService.list());
        }

@GetMapping("/{id}")
public Result findOne(@PathVariable Integer id) {
        return Result.success(paperQuestionService.getById(id));
        }

@GetMapping("/page")
public Result findPage(@RequestParam Integer pageNum,
@RequestParam Integer pageSize) {
        QueryWrapper<PaperQuestion> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByDesc("id");
        return Result.success(paperQuestionService.page(new Page<>(pageNum, pageSize), queryWrapper));
        }

        }

