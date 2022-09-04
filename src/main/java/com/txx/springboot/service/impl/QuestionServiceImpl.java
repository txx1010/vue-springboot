package com.txx.springboot.service.impl;

import com.txx.springboot.entity.Question;
import com.txx.springboot.mapper.QuestionMapper;
import com.txx.springboot.service.IQuestionService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author txx
 * @since 2022-09-03
 */
@Service
public class QuestionServiceImpl extends ServiceImpl<QuestionMapper, Question> implements IQuestionService {

}
