package com.txx.springboot.controller;


import cn.hutool.core.date.DateTime;
import cn.hutool.core.date.DateUtil;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.txx.springboot.entity.Sign;
import com.txx.springboot.entity.User;
import com.txx.springboot.service.ISignService;
import com.txx.springboot.utils.TokenUtils;
import org.springframework.web.bind.annotation.*;
import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.txx.springboot.common.Result;

import com.txx.springboot.service.IExamService;
import com.txx.springboot.entity.Exam;

import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author txx
 * @since 2022-09-04
 */
@RestController
@RequestMapping("/exam")
public class ExamController {
    
    @Resource
    private IExamService examService;

    @Resource
    private ISignService signService;

    // 新增或者更新
    @PostMapping
    public Result save(@RequestBody Exam exam) {
        examService.saveOrUpdate(exam);
        return Result.success();
    }

    @DeleteMapping("/{id}")
    public Result delete(@PathVariable Integer id) {
        examService.removeById(id);
        return Result.success();
    }

    @PostMapping("/del/batch")
    public Result deleteBatch(@RequestBody List<Integer> ids) {
        examService.removeByIds(ids);
        return Result.success();
    }

    @GetMapping
    public Result findAll() {
        return Result.success(examService.list());
    }

    @GetMapping("/{id}")
    public Result findOne(@PathVariable Integer id) {
            return Result.success(examService.getById(id));
    }

    @GetMapping("/page")
    public Result findPage(@RequestParam(defaultValue = "") String name,
                           @RequestParam Integer pageNum,
                           @RequestParam Integer pageSize) {
        QueryWrapper<Exam> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByDesc("id");
        if(!"".equals(name)){
            queryWrapper.like("name", name);
        }
        Page<Exam> page = examService.page(new Page<>(pageNum, pageSize), queryWrapper);
        for (Exam exam : page.getRecords()){
            setState(exam);
        }
        return Result.success(page);
    }

    @GetMapping("/page/front")
    public Result findPageFront(@RequestParam(defaultValue = "") String name,
                                @RequestParam Integer pageNum,
                                @RequestParam Integer pageSize) {
        QueryWrapper<Exam> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByDesc("id");
        if(!"".equals(name)){
            queryWrapper.like("name", name);
        }

        Page<Exam> page = examService.page(new Page<>(pageNum, pageSize), queryWrapper);
        User currentUser = TokenUtils.getCurrentUser();
//        if(currentUser.getRole().equals("ROLE_USER")){
//            queryWrapper.eq("user", currentUser.getUsername());
//        }
        //查出当前用户所有报名的考试
        List<Sign> signList = signService.list(new QueryWrapper<Sign>().eq("user_id", currentUser.getId()));
        for( Exam exam : page.getRecords()){
            exam.setEnable(false);
            Integer examId = exam.getId();
            signList.stream().filter(sign -> sign.getExamId().equals(examId)).findFirst().ifPresent(sign -> {
                exam.setEnable("审核通过".equals(sign.getState()));
            });

            setState(exam);
        }
        return Result.success(page);
    }
    private void setState(Exam exam){
        String time = exam.getTime();
        DateTime dateTime = DateUtil.parse(time, "yyyy-MM-dd HH:mm");
        Date now = new Date();
        if(DateUtil.compare(dateTime , now) <0){
            exam.setState("已结束");
        }
        else if(DateUtil.compare(dateTime , DateUtil.offsetHour(now , 2)) <= 0){
            exam.setState("进行中");
        } else {
            exam.setState("未开始");
        }
    }
}

