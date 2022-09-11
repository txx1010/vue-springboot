package com.txx.springboot.service.impl;

import com.txx.springboot.entity.StudentPaper;
import com.txx.springboot.mapper.StudentPaperMapper;
import com.txx.springboot.service.IStudentPaperService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author txx
 * @since 2022-09-11
 */
@Service
public class StudentPaperServiceImpl extends ServiceImpl<StudentPaperMapper, StudentPaper> implements IStudentPaperService {

}
