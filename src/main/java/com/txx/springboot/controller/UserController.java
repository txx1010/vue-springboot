package com.txx.springboot.controller;


import cn.hutool.core.collection.CollUtil;
import cn.hutool.poi.excel.ExcelReader;
import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.ExcelWriter;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.web.bind.annotation.*;
import javax.annotation.Resource;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.io.InputStream;
import java.net.URLEncoder;
import java.util.List;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;

import com.txx.springboot.service.IUserService;
import com.txx.springboot.entity.User;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author txx
 * @since 2022-08-12
 */
@RestController
@RequestMapping("/user")
        public class UserController {
    
        @Resource
        private IUserService userService;

        // 新增或者更新
        @PostMapping
        public boolean save(@RequestBody User user) {
            return userService.saveOrUpdate(user);
        }

        @DeleteMapping("/{id}")
        public Boolean delete(@PathVariable Integer id) {
            return userService.removeById(id);
        }

        @PostMapping("/del/batch")
        public boolean deleteBatch(@RequestBody List<Integer> ids) {
            return userService.removeByIds(ids);
        }

        @GetMapping
        public List<User> findAll() {
            return userService.list();
        }

        @GetMapping("/{id}")
        public User findOne(@PathVariable Integer id) {
            return userService.getById(id);
        }

        @GetMapping("/page")
        public Page<User> findPage(@RequestParam Integer pageNum,
                                   @RequestParam Integer pageSize,
                                   @RequestParam(defaultValue = "") String username,
                                   @RequestParam(defaultValue = "") String nickname,
                                   @RequestParam(defaultValue = "")String address) {
                QueryWrapper<User> queryWrapper = new QueryWrapper<>();
                if(!"".equals(username)){
                        queryWrapper.like("username",username);
                }
                if (!"".equals(nickname)){
                        queryWrapper.like("nickname",nickname);
                }
                if (!"".equals(address)){
                        queryWrapper.like("address",address);
                }
                queryWrapper.orderByDesc("id");
                return userService.page(new Page<>(pageNum, pageSize), queryWrapper);
        }
        /**
         * 导出接口
         */
        @GetMapping("/export")
        public void export(HttpServletResponse response) throws Exception {
                // 从数据库查询出所有的数据
                List<User> list = userService.list();
                // 通过工具类创建writer 写出到磁盘路径
//        ExcelWriter writer = ExcelUtil.getWriter(filesUploadPath + "/用户信息.xlsx");
                // 在内存操作，写出到浏览器
                ExcelWriter writer = ExcelUtil.getWriter(true);
                //自定义标题别名
                writer.addHeaderAlias("username", "用户名");
                writer.addHeaderAlias("password", "密码");
                writer.addHeaderAlias("nickname", "昵称");
                writer.addHeaderAlias("email", "邮箱");
                writer.addHeaderAlias("phone", "电话");
                writer.addHeaderAlias("address", "地址");
                writer.addHeaderAlias("createTime", "创建时间");
                writer.addHeaderAlias("avatarUrl", "头像");

                // 一次性写出list内的对象到excel，使用默认样式，强制输出标题
                writer.write(list, true);

                // 设置浏览器响应的格式
                response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=utf-8");
                String fileName = URLEncoder.encode("用户信息", "UTF-8");
                response.setHeader("Content-Disposition", "attachment;filename=" + fileName + ".xlsx");

                ServletOutputStream out = response.getOutputStream();
                writer.flush(out, true);
                out.close();
                writer.close();

        }
        /**
         * excel 导入
         * @param file
         * @throws Exception
         */
        @PostMapping("/import")
        public Boolean imp(MultipartFile file) throws Exception {
                InputStream inputStream = file.getInputStream();
                ExcelReader reader = ExcelUtil.getReader(inputStream);
                // 方式1：(推荐) 通过 javabean的方式读取Excel内的对象，但是要求表头必须是英文，跟javabean的属性要对应起来
//        List<User> users = reader.readAll(User.class);

                // 方式2：忽略表头的中文，直接读取表的内容
                List<List<Object>> list = reader.read(1);
                List<User> users = CollUtil.newArrayList();
                for (List<Object> row : list) {
                        User user = new User();
                        user.setUsername(row.get(0).toString());
                        user.setPassword(row.get(1).toString());
                        user.setNickname(row.get(2).toString());
                        user.setEmail(row.get(3).toString());
                        user.setPhone(row.get(4).toString());
                        user.setAddress(row.get(5).toString());
                        user.setAvatarUrl(row.get(6).toString());
                        users.add(user);
                }

                userService.saveBatch(users);
                return true;
        }

    }

