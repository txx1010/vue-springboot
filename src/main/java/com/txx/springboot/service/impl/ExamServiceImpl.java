package com.txx.springboot.service.impl;

import com.txx.springboot.entity.Exam;
import com.txx.springboot.mapper.ExamMapper;
import com.txx.springboot.service.IExamService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author txx
 * @since 2022-09-04
 */
@Service
public class ExamServiceImpl extends ServiceImpl<ExamMapper, Exam> implements IExamService {

}
