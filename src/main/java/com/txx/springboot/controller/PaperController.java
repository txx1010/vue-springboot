package com.txx.springboot.controller;


import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.util.RandomUtil;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.txx.springboot.controller.dto.PaperDTO;
import com.txx.springboot.entity.PaperQuestion;
import com.txx.springboot.entity.Question;
import com.txx.springboot.exception.ServiceException;
import com.txx.springboot.service.IPaperQuestionService;
import com.txx.springboot.service.IQuestionService;
import org.springframework.web.bind.annotation.*;
import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.txx.springboot.common.Result;

import com.txx.springboot.service.IPaperService;
import com.txx.springboot.entity.Paper;

import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author txx
 * @since 2022-09-04
 */
@RestController
@RequestMapping("/paper")
public class PaperController {
    
    @Resource
    private IPaperService paperService;

    @Resource
    private IQuestionService questionService;

    @Resource
    private IPaperQuestionService paperQuestionService;

    // 新增或者更新
    @PostMapping
    public Result save(@RequestBody Paper paper) {
        paperService.saveOrUpdate(paper);
            return Result.success();
    }

    @PostMapping("/takePaper")
    public Result takePaper(@RequestBody PaperDTO paperDTO) {
        //删除老的试卷
        UpdateWrapper<PaperQuestion> updateWrapper = new UpdateWrapper<>();
        updateWrapper.eq("paper_id", paperDTO.getPaperId());
        paperQuestionService.remove(updateWrapper);

        QueryWrapper<Question> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("course_id", paperDTO.getCourseId());

        //根据课程id查询出所有该课程的题目，再根据type去分
        List<Question> questionList = questionService.list(queryWrapper);
        List<Question> type1List = questionList.stream().filter(question -> question.getType() ==1).collect(Collectors.toList());
        List<Question> type2List = questionList.stream().filter(question -> question.getType() ==2).collect(Collectors.toList());
        List<Question> type3List = questionList.stream().filter(question -> question.getType() ==3).collect(Collectors.toList());
        if (type1List.size() < paperDTO.getType1()){
            throw new ServiceException("-1" , "选择题数量不足");
        }
        if (type2List.size() < paperDTO.getType2()){
            throw new ServiceException("-1" , "判断题数量不足");
        }
        if (type3List.size() < paperDTO.getType3()){
            throw new ServiceException("-1" , "问答题数量不足");
        }

        //开始随机组卷
        List<PaperQuestion> paperQuestion = getPaperQuestion(type1List.size(), paperDTO.getType1(), type1List, paperDTO.getPaperId());
        paperQuestion.addAll(getPaperQuestion(type2List.size(), paperDTO.getType2(), type2List , paperDTO.getPaperId()));
        paperQuestion.addAll(getPaperQuestion(type3List.size(), paperDTO.getType3(), type3List , paperDTO.getPaperId()));

        paperQuestionService.saveBatch(paperQuestion);

        return Result.success(paperQuestion);   //批量插入关联关系表
    }

    //封装一个获取试卷戈题目关联关系list的方法
    private List<PaperQuestion> getPaperQuestion(int questionSize , int paperQuestionSize, List<Question> source, Integer paperId){
        List<Integer> typeRandomList = getEleList(questionSize ,paperQuestionSize);
        List<PaperQuestion> list = new ArrayList<>();
        for(Integer index : typeRandomList){
            Question question = source.get(index);
            PaperQuestion paperQuestion = new PaperQuestion();
            paperQuestion.setPaperId(paperId);
            paperQuestion.setQuestionId(question.getId());
            list.add(paperQuestion);
        }
        return list;
    }

    private  List<Integer> getEleList(int sourceSize, int resultSize){
        List<Integer> list = CollUtil.newArrayList();
        for(int i=0 ; i < sourceSize ; i++){
            list.add(i);
        }
        return RandomUtil.randomEleList(list,resultSize);
    }


    @DeleteMapping("/{id}")
    public Result delete(@PathVariable Integer id) {
        paperService.removeById(id);
            return Result.success();
    }

    @PostMapping("/del/batch")
    public Result deleteBatch(@RequestBody List<Integer> ids) {
        paperService.removeByIds(ids);
            return Result.success();
            }

    @GetMapping()
    public Result findAll() {
        return Result.success(paperService.list());
    }


    @GetMapping("/view/{paperId}")
    public Result view(@PathVariable Integer paperId) {
        List<Question> list = paperQuestionService.selectQuestions(paperId);
        return Result.success(list);
    }

    @GetMapping("/{id}")
    public Result findOne(@PathVariable Integer id) {
            return Result.success(paperService.getById(id));
            }

    @GetMapping("/page")
    public Result findPage(@RequestParam Integer pageNum,
    @RequestParam Integer pageSize) {
            QueryWrapper<Paper> queryWrapper = new QueryWrapper<>();
            queryWrapper.orderByDesc("id");
            return Result.success(paperService.page(new Page<>(pageNum, pageSize), queryWrapper));
            }

        }

