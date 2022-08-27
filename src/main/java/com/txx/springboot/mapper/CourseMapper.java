package com.txx.springboot.mapper;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.txx.springboot.entity.Course;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author txx
 * @since 2022-08-27
 */
public interface CourseMapper extends BaseMapper<Course> {

    Page<Course> findPage(Page<Course> page, @Param("name") String name);

    void deleteStudentCourse(@Param("courseId")Integer courseId, @Param("studentId")Integer studentId);

    void setStudentCourse(@Param("courseId")Integer courseId, @Param("studentId")Integer studentId);
}
