package com.txx.springboot.controller;


import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.txx.springboot.common.Result;
import com.txx.springboot.entity.Article;
import com.txx.springboot.service.IArticleService;
import com.txx.springboot.utils.TokenUtils;
import com.txx.springboot.utils.TokenUtils;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.txx.springboot.common.Result;

import com.txx.springboot.service.IArticleService;
import com.txx.springboot.entity.Article;

import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author 青哥哥
 * @since 2022-03-22
 */
@RestController
@RequestMapping("/article")
public class ArticleController {

    @Resource
    private IArticleService articleService;

    // 新增或者更新
    @PostMapping
    public Result save(@RequestBody Article article) {
        if (article.getId() == null) { // 新增
            article.setTime(DateUtil.now());  // new Date()
            article.setUser(TokenUtils.getCurrentUser().getNickname());
        }
        articleService.saveOrUpdate(article);
        return Result.success();
    }


    @DeleteMapping("/{id}")
    public Result delete(@PathVariable Integer id) {
        articleService.removeById(id);
        return Result.success();
    }

    @PostMapping("/del/batch")
    public Result deleteBatch(@RequestBody List<Integer> ids) {
        articleService.removeByIds(ids);
        return Result.success();
    }

    @GetMapping
    public Result findAll(@RequestParam(required = false) String start, @RequestParam(required = false) String end) {
        QueryWrapper<Article> queryWrapper = new QueryWrapper<>();

        if (StrUtil.isNotBlank(start)) {
            // where time >= start
            queryWrapper.ge("time", start);
        }
        if (StrUtil.isNotBlank(end)) {
            // where time <= end
            queryWrapper.le("time", end);
        }
        return Result.success(articleService.list(queryWrapper));
    }

    @GetMapping("/{id}")
    public Result findOne(@PathVariable Integer id) {
        return Result.success(articleService.getById(id));
    }

    @GetMapping("/page")
    public Result findPage(@RequestParam String name,
                           @RequestParam Integer pageNum,
                           @RequestParam Integer pageSize) {
        QueryWrapper<Article> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByDesc("id");
        if (StrUtil.isNotBlank(name)) {
            queryWrapper.like("name", name);
        }
        return Result.success(articleService.page(new Page<>(pageNum, pageSize), queryWrapper));
    }

}

