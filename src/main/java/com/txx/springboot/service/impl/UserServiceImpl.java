package com.txx.springboot.service.impl;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.RandomUtil;
import cn.hutool.log.Log;
import com.alipay.api.domain.AlipaySecurityDataInnerouterTestQueryModel;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.txx.springboot.common.Constants;
import com.txx.springboot.common.RoleEnum;
import com.txx.springboot.common.ValidationEnum;
import com.txx.springboot.config.AuthAccess;
import com.txx.springboot.controller.dto.UserDTO;
import com.txx.springboot.controller.dto.UserPasswordDTO;
import com.txx.springboot.entity.Menu;
import com.txx.springboot.entity.User;
import com.txx.springboot.entity.Validation;
import com.txx.springboot.exception.ServiceException;
import com.txx.springboot.mapper.RoleMapper;
import com.txx.springboot.mapper.RoleMenuMapper;
import com.txx.springboot.mapper.UserMapper;
import com.txx.springboot.service.IMenuService;
import com.txx.springboot.service.IUserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.txx.springboot.service.IValidationService;
import com.txx.springboot.utils.TokenUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.messaging.MessagingException;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.mail.internet.MimeMessage;
import java.util.ArrayList;
import java.util.Date;
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

    @Autowired
    JavaMailSender javaMailSender;

    @Value("${spring.mail.username}")
    private String from;

    private static final Log LOG= Log.get();

    @Resource
    private UserMapper userMapper;

    @Resource
    private RoleMapper roleMapper;

    @Resource
    private RoleMenuMapper roleMenuMapper;

    @Resource
    private IMenuService menuService;
    @Resource
    private IValidationService validationService;

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
            List<Menu> roleMenus = getRoleMenus(role);
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
            one.setRole(RoleEnum.ROLE_STUDENT.toString());
            if (one.getNickname() == null) {
                one.setNickname(one.getUsername());
            }
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

    // 邮箱验证
    @Override
    public UserDTO loginEmail(UserDTO userDTO) {
        String email = userDTO.getEmail();
        String code = userDTO.getCode();

        // 先查询 邮箱验证的表，看看之前有没有发送过  邮箱code，如果不存在，就重新获取
        QueryWrapper<Validation> validationQueryWrapper = new QueryWrapper<>();
        validationQueryWrapper.eq("email", email);
        validationQueryWrapper.eq("code", code);
        validationQueryWrapper.ge("time", new Date());  // 查询数据库没过期的code, where time >= new Date()
        Validation one = validationService.getOne(validationQueryWrapper);
        if (one == null) {
            throw new ServiceException("-1", "验证码过期，请重新获取");
        }

        // 如果验证通过了，就查询要不过户的信息
        QueryWrapper<User> userQueryWrapper = new QueryWrapper<>();
        userQueryWrapper.eq("email", email);  //存根据email查询用户信息
        User user = getOne(userQueryWrapper);

        if (user == null) {
            throw new ServiceException("-1", "未找到用户");
        }

        BeanUtil.copyProperties(user, userDTO, true); //从user里面copy属性到userDTO里面
        // 设置token
        String token = TokenUtils.genToken(user.getId().toString(), user.getPassword());
        userDTO.setToken(token);

        String role = user.getRole();
        List<Menu> roleMenus = getRoleMenus(role);
        userDTO.setMenus(roleMenus);
        return userDTO;
    }

    // 发送邮箱验证码
    @Override
    public void sendEmailCode(String email, Integer type) throws MessagingException, javax.mail.MessagingException {
        Date now = new Date();
        // 先查询同类型code
        QueryWrapper<Validation> validationQueryWrapper = new QueryWrapper<>();
        validationQueryWrapper.eq("email", email);
        validationQueryWrapper.eq("type", type);
        validationQueryWrapper.ge("time", now);  // 查询数据库没过期的code
        Validation validation = validationService.getOne(validationQueryWrapper);
        if (validation != null) {
            throw new ServiceException("-1", "当前您的验证码仍然有效，请不要重复发送");
        }


        String code = RandomUtil.randomNumbers(4); // 随机一个 4位长度的验证码

//        SimpleMailMessage message = new SimpleMailMessage();
//        message.setFrom(from);
//        message.setTo(email);
//        message.setSubject("【txx测试邮箱验证】");
//        message.setText("您本次邮箱登录的验证码是："+code+",有效期5分钟，请妥善保管，切勿泄漏。");
//        message.setText("只有笨猪猪才会收到此次邮箱验证哦~");

        if (ValidationEnum.LOGIN.getCode().equals(type)) {
            SimpleMailMessage message=new SimpleMailMessage();
            message.setFrom(from);  // 发送人
            message.setTo(email);
            message.setSentDate(now);
            message.setSubject("【登录邮箱验证】");
            message.setText("您本次登录的验证码是：" + code + "，有效期5分钟,请妥善保管，切勿泄露。");
            javaMailSender.send(message);
        } else if (ValidationEnum.FORGET_PASS.getCode().equals(type)){
            MimeMessage message = javaMailSender.createMimeMessage();
            MimeMessageHelper helper=new MimeMessageHelper(message);
            helper.setSubject("【忘记密码验证】");
            helper.setFrom(from);  // 发送人
            helper.setTo(email);
            helper.setSentDate(now);  // 富文本
            String context="<b>尊敬的用户：</b><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您好，您本次忘记密码的验证码是："+
                    "<b color=\"'red'\">"  + code + "</b><br>"
                    +"，有效期5分钟。请妥善保管，切勿泄露";
            helper.setText(context, true);
            javaMailSender.send(message);

        }

//         发送成功之后，把验证码存到数据库
        validationService.saveCode(email, code, type, DateUtil.offsetMinute(now, 5));
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
    private List<Menu> getRoleMenus(String roleFlag){

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
