package com.txx.springboot.service.impl;

import com.txx.springboot.entity.Article;
import com.txx.springboot.mapper.ArticleMapper;
import com.txx.springboot.service.IArticleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author txx
 * @since 2022-08-30
 */
@Service
public class ArticleServiceImpl extends ServiceImpl<ArticleMapper, Article> implements IArticleService {

}
