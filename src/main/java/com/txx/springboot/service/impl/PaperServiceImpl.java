package com.txx.springboot.service.impl;

import com.txx.springboot.entity.Paper;
import com.txx.springboot.mapper.PaperMapper;
import com.txx.springboot.service.IPaperService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author txx
 * @since 2022-09-04
 */
@Service
public class PaperServiceImpl extends ServiceImpl<PaperMapper, Paper> implements IPaperService {

}
