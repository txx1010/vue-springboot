package com.txx.springboot.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.txx.springboot.entity.Course;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author txx
 * @since 2022-08-27
 */
public interface ICourseService extends IService<Course> {

    Page<Course> findPage(Page<Course> page, String name);

    void setStudentCourse(Integer courseId, Integer studentId);

}
