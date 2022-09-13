package com.txx.springboot.controller;


import cn.hutool.core.collection.CollUtil;
import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.txx.springboot.entity.Course;
import com.txx.springboot.service.ICourseService;
import org.springframework.web.bind.annotation.*;
import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.txx.springboot.common.Result;

import com.txx.springboot.service.IMajorCourseService;
import com.txx.springboot.entity.MajorCourse;

import org.springframework.web.bind.annotation.RestController;
import springfox.documentation.spring.web.json.Json;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author txx
 * @since 2022-09-12
 */
@RestController
@RequestMapping("/majorCourse")
public class MajorCourseController {
    
    @Resource
    private IMajorCourseService majorCourseService;

    @Resource
    private ICourseService courseService;

    // 新增或者更新
    @PostMapping("/{majorId}")
    public Result save(@PathVariable Integer majorId, @RequestBody List<MajorCourse> majorCourse) {
        majorCourseService.saveAll(majorId,majorCourse);
            return Result.success();
    }

    @DeleteMapping("/{id}")
    public Result delete(@PathVariable Integer id) {
        majorCourseService.removeById(id);
            return Result.success();
    }

    @PostMapping("/del/batch")
    public Result deleteBatch(@RequestBody List<Integer> ids) {
        majorCourseService.removeByIds(ids);
            return Result.success();
    }

    @GetMapping
    public Result findAll() {
            return Result.success(majorCourseService.list());
    }

    //核心接口，查询专业课程表
    @GetMapping("/courseTable/{majorId}")
    public Result findCourseTable(@PathVariable Integer majorId) {
        QueryWrapper<MajorCourse> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("major_id", majorId);
        List<MajorCourse> majorCourses = majorCourseService.list(queryWrapper);

        //转化成这种格式:{ section: {num: '第一大节',time:'08:00-09:40'}, mon: {course: '大学物理', room:'A102', teacher:'张春华'}}
        ArrayList<JSONObject> list = CollUtil.newArrayList();
        JSONObject jsonObject1 = new JSONObject();
        JSONObject jsonObject2 = new JSONObject();
        JSONObject jsonObject3 = new JSONObject();
        JSONObject jsonObject4 = new JSONObject();
        JSONObject jsonObject5 = new JSONObject();
        jsonObject1.set("section",JSONUtil.parseObj("{\"num\": \"第一大节\", \"time\" : \"08:00-09:40\" }"));
        jsonObject2.set("section",JSONUtil.parseObj("{\"num\": \"第二大节\", \"time\" : \"09:00-11:30\" }"));
        jsonObject3.set("section",JSONUtil.parseObj("{\"num\": \"第三大节\", \"time\" : \"14:00-15:40\" }"));
        jsonObject4.set("section",JSONUtil.parseObj("{\"num\": \"第四大节\", \"time\" : \"15:50-17:30\" }"));
        jsonObject5.set("section",JSONUtil.parseObj("{\"num\": \"第五大节\", \"time\" : \"19:00-20:30\" }"));
        list.add(jsonObject1);
        list.add(jsonObject2);
        list.add(jsonObject3);
        list.add(jsonObject4);
        list.add(jsonObject5);
        majorCourses.forEach(mc -> {
            Integer courseId = mc.getCourseId();
            Course course = courseService.getById(courseId);
            String weekDay = mc.getWeekDay();
            String section = mc.getSection();
            switch (section) {
                case "一":
                    setJson(weekDay, course , jsonObject1);
                    break;
                case "二":
                    setJson(weekDay, course , jsonObject2);
                    break;
                case "三":
                    setJson(weekDay, course , jsonObject3);
                    break;
                case "四":
                    setJson(weekDay, course , jsonObject4);
                    break;
                case "五":
                    setJson(weekDay, course , jsonObject5);
                    break;

            }
        });
        return Result.success(list);
    }
    private JSONObject setJson(String weekDay, Course course, JSONObject jsonObject) {
        if("周一".equals(weekDay)) {
            jsonObject.set("mon", course);
        } else if ("周二".equals(weekDay)) {
            jsonObject.set("tue", course);
        } else if ("周三".equals(weekDay)) {
            jsonObject.set("wed", course);
        } else if ("周四".equals(weekDay)) {
            jsonObject.set("thu", course);
        } else if ("周五".equals(weekDay)) {
            jsonObject.set("fri", course);
        } else if ("周六".equals(weekDay)) {
            jsonObject.set("sat", course);
        } else if ("周日".equals(weekDay)) {
            jsonObject.set("sun", course);
        }
        return jsonObject;
    }

    @GetMapping("/major/{majorId}")
    public Result findByMajor(@PathVariable Integer majorId) {
        QueryWrapper<MajorCourse> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("major_id", majorId);
        List<MajorCourse> list = majorCourseService.list(queryWrapper);
        return Result.success(list);
    }

    @GetMapping("/{id}")
    public Result findOne(@PathVariable Integer id) {
            return Result.success(majorCourseService.getById(id));
    }

    @GetMapping("/page")
    public Result findPage(@RequestParam Integer pageNum,
    @RequestParam Integer pageSize) {
            QueryWrapper<MajorCourse> queryWrapper = new QueryWrapper<>();
            queryWrapper.orderByDesc("id");
            return Result.success(majorCourseService.page(new Page<>(pageNum, pageSize), queryWrapper));
    }

}

