package com.txx.springboot.service.impl;

import com.txx.springboot.entity.Major;
import com.txx.springboot.mapper.MajorMapper;
import com.txx.springboot.service.IMajorService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author txx
 * @since 2022-09-12
 */
@Service
public class MajorServiceImpl extends ServiceImpl<MajorMapper, Major> implements IMajorService {

}
