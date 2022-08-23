package com.txx.springboot.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.txx.springboot.entity.Role;
import com.txx.springboot.entity.RoleMenu;
import com.txx.springboot.mapper.RoleMapper;
import com.txx.springboot.mapper.RoleMenuMapper;
import com.txx.springboot.service.IRoleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

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

    @Resource
    private RoleMenuMapper roleMenuMapper;

    @Transactional
    @Override
    public void setRoleMenu(Integer roleId, List<Integer> menuIds) {
//        QueryWrapper<RoleMenu> queryWrapper = new QueryWrapper<>();
//        queryWrapper.eq("role_id",roleId);
//        roleMenuMapper.delete(queryWrapper);


        //先删后增
        //先删除当前角色id所有的绑定关系
        roleMenuMapper.deleteByRoleId(roleId);

        //再把前端传过来的菜单id数组绑定到当前的这个角色id上去
        for(Integer menuId : menuIds){
            RoleMenu roleMenu = new RoleMenu();
            roleMenu.setRoleId(roleId);
            roleMenu.setMenuId(menuId);
            roleMenuMapper.insert(roleMenu);
        }
    }

    @Override
    public List<Integer> getRoleMenu(Integer roleId) {
        return roleMenuMapper.selectByRoleId(roleId);
    }
}
