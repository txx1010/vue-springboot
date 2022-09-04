package com.txx.springboot.mapper;

import com.txx.springboot.entity.PaperQuestion;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.txx.springboot.entity.Question;

import java.util.List;

/**
 * <p>
 * 多对多的试卷与题目映射表 Mapper 接口
 * </p>
 *
 * @author txx
 * @since 2022-09-04
 */
public interface PaperQuestionMapper extends BaseMapper<PaperQuestion> {

    List<Question> selectQuestions(Integer paperId);
}
