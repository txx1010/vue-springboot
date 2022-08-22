package com.txx.springboot.service.impl;

import com.txx.springboot.entity.Role;
import com.txx.springboot.mapper.RoleMapper;
import com.txx.springboot.service.IRoleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author txx
 * @since 2022-08-22
 */
@Service
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role> implements IRoleService {

}
