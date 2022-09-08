package com.txx.springboot.service.impl;

import com.txx.springboot.entity.Sign;
import com.txx.springboot.mapper.SignMapper;
import com.txx.springboot.service.ISignService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author txx
 * @since 2022-09-07
 */
@Service
public class SignServiceImpl extends ServiceImpl<SignMapper, Sign> implements ISignService {

}
