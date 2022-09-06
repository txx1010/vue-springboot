package com.txx.springboot.service;

import cn.hutool.core.date.DateTime;
import com.txx.springboot.entity.Validation;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author txx
 * @since 2022-09-05
 */
public interface IValidationService extends IService<Validation> {

    void saveCode(String email, String code, Integer type, DateTime offsetMinute);

}
