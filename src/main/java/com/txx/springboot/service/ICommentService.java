package com.txx.springboot.service;

import com.txx.springboot.entity.Comment;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author txx
 * @since 2022-08-31
 */
public interface ICommentService extends IService<Comment> {

    List<Comment> findCommentDetail(Integer articleId);
}
