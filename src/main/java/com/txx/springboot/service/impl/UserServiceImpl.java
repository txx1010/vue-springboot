package com.txx.springboot.service.impl;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.log.Log;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.txx.springboot.common.Constants;
import com.txx.springboot.controller.dto.UserDTO;
import com.txx.springboot.controller.dto.UserPasswordDTO;
import com.txx.springboot.entity.Menu;
import com.txx.springboot.entity.User;
import com.txx.springboot.exception.ServiceException;
import com.txx.springboot.mapper.RoleMapper;
import com.txx.springboot.mapper.RoleMenuMapper;
import com.txx.springboot.mapper.UserMapper;
import com.txx.springboot.service.IMenuService;
import com.txx.springboot.service.IUserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.txx.springboot.utils.TokenUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author txx
 * @since 2022-08-12
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements IUserService {

    private static final Log LOG= Log.get();

    @Resource
    private UserMapper userMapper;

    @Resource
    private RoleMapper roleMapper;

    @Resource
    private RoleMenuMapper roleMenuMapper;

    @Resource
    private IMenuService menuService;
    @Override
    public UserDTO login(UserDTO userDTO) {

        User one = getUserInfo(userDTO);
        //判断业务异常
        if(one!=null){
            BeanUtil.copyProperties(one,userDTO,true);
            //设置token
            String token = TokenUtils.genToken(one.getId().toString(), one.getPassword());
            userDTO.setToken(token);

            //设置用户的菜单列表
            String role = one.getRole(); //ROLE＿ADMIN
            List<Menu> roleMenus = getRoleMenu(role);
            userDTO.setMenus(roleMenus);

            return userDTO;
        }
        else {
            throw new ServiceException(Constants.CODE_600,"用户名或密码错误");//没找到用户
        }
    }

    @Override
    public User register(UserDTO userDTO) {
        User one = getUserInfo(userDTO);
        if(one ==null){
            one =new User();
            BeanUtil.copyProperties(userDTO,one,true);
            save(one);  //把copy完之后的用户
        }else {
            throw new ServiceException(Constants.CODE_600,"用户已存在");
        }
        return one;
    }

    @Override
    public void updatePassword(UserPasswordDTO userPasswordDTO) {
        int update = userMapper.updatePassword(userPasswordDTO);
        if (update < 1) {
            throw new ServiceException(Constants.CODE_600, "密码错误");
        }
    }

    @Override
    public Page<User> findPage(Page<User> page, String username, String email, String address) {
        return  userMapper.findPage(page,username,email,address);
    }

    private User getUserInfo(UserDTO userDTO){
        QueryWrapper<User> queryWrapper=new QueryWrapper<>();
        queryWrapper.eq("username",userDTO.getUsername());
        queryWrapper.eq("password",userDTO.getPassword());
        User one;

        //系统异常
        try{
            one=getOne(queryWrapper); //从数据库查询用户信息
        } catch (Exception e){
            LOG.error(e);
            throw new ServiceException(Constants.CODE_500,"系统错误");//sql查询问题，例如脏数据等属于系统问题
        }
        return  one;
    }

    /**
     * 获取当前角色的菜单列表
     * @param roleFlag
     * @return
     */
    private List<Menu> getRoleMenu(String roleFlag){

        Integer roleId = roleMapper.selectByFlag(roleFlag);
        //当前用户的所有菜单id集合
        List<Integer> menuIds = roleMenuMapper.selectByRoleId(roleId);
        //查出系统所有的菜单
        List<Menu> menus = menuService.findMenus("");
        //new一个最后筛选完成后的list
        List<Menu> roleMenus = new ArrayList<>();
        //筛选当前用户的菜单
        for(Menu menu: menus) {
            if(menuIds.contains(menu.getId())) {
                roleMenus.add(menu);
            }
            List<Menu> children = menu.getChildren();
            // removeIf 移除children里面不在menuIds集合里的元素
            children.removeIf(child -> !menuIds.contains(child.getId()));

            //如果这个菜单有子菜单并且此菜单没有被加入集合中，则把他也加入集合
            if(children.size() != 0 && !roleMenus.contains(menu)) {
                roleMenus.add(menu);
            }
        }
        return roleMenus;
    }


}
