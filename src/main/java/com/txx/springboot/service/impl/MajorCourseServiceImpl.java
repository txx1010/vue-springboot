package com.txx.springboot.service.impl;

import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.txx.springboot.entity.MajorCourse;
import com.txx.springboot.mapper.MajorCourseMapper;
import com.txx.springboot.service.IMajorCourseService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author txx
 * @since 2022-09-12
 */
@Service
public class MajorCourseServiceImpl extends ServiceImpl<MajorCourseMapper, MajorCourse> implements IMajorCourseService {

    @Transactional
    @Override
    public void saveAll(Integer majorId, List<MajorCourse> majorCourse) {
        remove(new UpdateWrapper<MajorCourse>().eq("major_id", majorId));
        saveBatch(majorCourse);
    }
}
