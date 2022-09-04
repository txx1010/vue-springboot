package com.txx.springboot.service.impl;

import com.txx.springboot.entity.PaperQuestion;
import com.txx.springboot.entity.Question;
import com.txx.springboot.mapper.PaperQuestionMapper;
import com.txx.springboot.service.IPaperQuestionService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * <p>
 * 多对多的试卷与题目映射表 服务实现类
 * </p>
 *
 * @author txx
 * @since 2022-09-04
 */
@Service
public class PaperQuestionServiceImpl extends ServiceImpl<PaperQuestionMapper, PaperQuestion> implements IPaperQuestionService {

    @Resource
    private PaperQuestionMapper paperQuestionMapper;

    @Override
    public List<Question> selectQuestions(Integer paperId) {
        return paperQuestionMapper.selectQuestions(paperId);
    }
}
