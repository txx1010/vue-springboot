package com.txx.springboot.service.impl;

import com.txx.springboot.entity.ExamPaper;
import com.txx.springboot.mapper.ExamPaperMapper;
import com.txx.springboot.service.IExamPaperService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 多对多，异常考试对应多个组卷 服务实现类
 * </p>
 *
 * @author txx
 * @since 2022-09-04
 */
@Service
public class ExamPaperServiceImpl extends ServiceImpl<ExamPaperMapper, ExamPaper> implements IExamPaperService {

}
