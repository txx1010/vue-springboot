package com.txx.springboot.service.impl;

import com.txx.springboot.entity.Clock;
import com.txx.springboot.mapper.ClockMapper;
import com.txx.springboot.service.IClockService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author txx
 * @since 2022-09-14
 */
@Service
public class ClockServiceImpl extends ServiceImpl<ClockMapper, Clock> implements IClockService {

}
