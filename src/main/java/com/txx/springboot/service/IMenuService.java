package com.txx.springboot.service;

import com.txx.springboot.entity.Menu;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author txx
 * @since 2022-08-22
 */
public interface IMenuService extends IService<Menu> {

    List<Menu> findMenus(String name);
}
