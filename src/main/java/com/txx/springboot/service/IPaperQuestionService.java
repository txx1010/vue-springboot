package com.txx.springboot.service;

import com.txx.springboot.entity.PaperQuestion;
import com.baomidou.mybatisplus.extension.service.IService;
import com.txx.springboot.entity.Question;

import java.util.List;

/**
 * <p>
 * 多对多的试卷与题目映射表 服务类
 * </p>
 *
 * @author txx
 * @since 2022-09-04
 */
public interface IPaperQuestionService extends IService<PaperQuestion> {

    List<Question> selectQuestions(Integer paperId);
}
