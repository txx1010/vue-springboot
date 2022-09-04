package com.txx.springboot.controller;


import cn.hutool.core.date.DateUtil;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.txx.springboot.utils.TokenUtils;
import org.springframework.web.bind.annotation.*;
import javax.annotation.Resource;
import java.util.List;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.txx.springboot.common.Result;

import com.txx.springboot.service.IQuestionService;
import com.txx.springboot.entity.Question;

import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author txx
 * @since 2022-09-03
 */
@RestController
@RequestMapping("/question")
public class QuestionController {
    
    @Resource
    private IQuestionService questionService;

    // 新增或者更新
    @PostMapping
    public Result save(@RequestBody Question question) {
        if(question.getId() == null){
            question.setTime(DateUtil.now());
            question.setUserId(TokenUtils.getCurrentUser().getId());
        }
        questionService.saveOrUpdate(question);
        return Result.success();
    }

    @DeleteMapping("/{id}")
    public Result delete(@PathVariable Integer id) {
        questionService.removeById(id);
            return Result.success();
    }

    @PostMapping("/del/batch")
    public Result deleteBatch(@RequestBody List<Integer> ids) {
        questionService.removeByIds(ids);
            return Result.success();
    }

    @GetMapping
    public Result findAll() {
            return Result.success(questionService.list());
            }

    @GetMapping("/{id}")
    public Result findOne(@PathVariable Integer id) {
            return Result.success(questionService.getById(id));
            }

    @GetMapping("/page")
    public Result findPage(@RequestParam(defaultValue = "") String name,
                            @RequestParam(required = false) Integer courseId,
                            @RequestParam(required = false) Integer type,
                            @RequestParam Integer pageNum,
                            @RequestParam Integer pageSize) {
            QueryWrapper<Question> queryWrapper = new QueryWrapper<>();
            queryWrapper.orderByDesc("id");
            if (!"".equals(name)){
                queryWrapper.like("name" , name);
            }
            if (courseId != null){
                queryWrapper.eq("course_id", courseId);
            }
            if (type != null){
                queryWrapper.eq("type", type);
            }
            return Result.success(questionService.page(new Page<>(pageNum, pageSize), queryWrapper));
            }

}

