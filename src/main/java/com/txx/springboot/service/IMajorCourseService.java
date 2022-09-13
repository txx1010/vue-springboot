package com.txx.springboot.service;

import com.txx.springboot.entity.MajorCourse;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author txx
 * @since 2022-09-12
 */
public interface IMajorCourseService extends IService<MajorCourse> {

    void saveAll(Integer majorId ,List<MajorCourse> majorCourse);
}
