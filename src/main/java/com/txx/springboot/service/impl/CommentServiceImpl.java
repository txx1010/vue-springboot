package com.txx.springboot.service.impl;

import com.txx.springboot.entity.Comment;
import com.txx.springboot.mapper.CommentMapper;
import com.txx.springboot.service.ICommentService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author txx
 * @since 2022-08-31
 */
@Service
public class CommentServiceImpl extends ServiceImpl<CommentMapper, Comment> implements ICommentService {

    @Resource
    private CommentMapper commentMapper;

    @Override
    public List<Comment> findCommentDetail(Integer articleId) {
        return commentMapper.findCommentDetail(articleId);
    }
}
