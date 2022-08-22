package com.txx.springboot.service.impl;

import com.txx.springboot.entity.Menu;
import com.txx.springboot.mapper.MenuMapper;
import com.txx.springboot.service.IMenuService;
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
public class MenuServiceImpl extends ServiceImpl<MenuMapper, Menu> implements IMenuService {

}
