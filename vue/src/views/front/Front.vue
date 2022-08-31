<template>
  <div>
    <!--    头部-->
    <div style="display: flex; height: 60px; line-height: 60px; border-bottom: 1px solid #eee">
      <div style="width: 300px; display: flex; padding-left: 30px">
        <div style="width: 60px">
          <img src="../../assets/logo1.png" alt="" style="width: 50px; position: relative; top: 5px; right: 0">
        </div>
        <div style="flex: 1">欢迎来到济南大学选课系统</div>
      </div>
      <div style="flex: 1">
        <!--        导航菜单-->
        <!--        <ul style="list-style: none; background-color: 	#98FB98; ">-->
        <!--          <li class="item">-->
        <!--            <el-dropdown size="medium">-->
        <!--              <span>更多菜单<i class="el-icon-arrow-down el-icon&#45;&#45;right"></i></span>-->
        <!--              <el-dropdown-menu slot="dropdown">-->
        <!--                <el-dropdown-item icon="el-icon-plus">黄金糕</el-dropdown-item>-->
        <!--                <el-dropdown-item>狮子头</el-dropdown-item>-->
        <!--                <el-dropdown-item>螺蛳粉</el-dropdown-item>-->
        <!--                <el-dropdown-item>双皮奶</el-dropdown-item>-->
        <!--                <el-dropdown-item>蚵仔煎</el-dropdown-item>-->
        <!--              </el-dropdown-menu>-->
        <!--            </el-dropdown>-->
        <!--          </li>-->
        <!--          <li class="item"><a href="/">菜单2</a></li>-->
        <!--          <li class="item"><a href="/">菜单3</a></li>-->
        <!--          <li class="item"><a href="/">菜单4</a></li>-->
        <!--        </ul>-->

        <el-menu :default-active="'1'" class="el-menu-demo" mode="horizontal" router>
          <el-menu-item index="/front/home">首页</el-menu-item>
          <el-submenu index="2">
            <template slot="title">教务管理</template>
            <el-menu-item @click="login">进入后台</el-menu-item>
            <el-menu-item index="/front/item1">学分查询</el-menu-item>
            <el-menu-item index="2-3">消息中心</el-menu-item>
          </el-submenu>
          <el-menu-item index="/front/article" >文章列表</el-menu-item>
          <el-menu-item index="4"><a href="http://jwgl9.ujn.edu.cn/jwglxt/xtgl/login_slogin.html?kickout=1" target="_blank">成绩管理</a></el-menu-item>
        </el-menu>
      </div>
      <div style="width: 200px">
        <div v-if="!user.username" style="text-align: right; padding-right: 30px">
          <el-button @click="$router.push('/login')">登录</el-button>
          <el-button @click="$router.push('/register')">注册</el-button>
        </div>
        <div v-else>
          <el-dropdown style="width: 150px; cursor: pointer; text-align: right">
            <div style="display: inline-block">
              <img :src="user.avatarUrl" alt=""
                   style="width: 30px; border-radius: 50%; position: relative; top: 10px; right: 5px">
              <span>{{ user.nickname }}</span><i class="el-icon-arrow-down" style="margin-left: 5px"></i>
            </div>
            <el-dropdown-menu slot="dropdown" style="width: 100px; text-align: center">
              <el-dropdown-item style="font-size: 14px; padding: 5px 0">
                <router-link to="/front/password">修改密码</router-link>
              </el-dropdown-item>
              <el-dropdown-item style="font-size: 14px; padding: 5px 0">
                <router-link to="/front/person">个人信息</router-link>
              </el-dropdown-item>
              <el-dropdown-item style="font-size: 14px; padding: 5px 0">
                <span style="text-decoration: none" @click="logout">退出</span>
              </el-dropdown-item>
            </el-dropdown-menu>
          </el-dropdown>
        </div>
      </div>
    </div>

    <div style="width: 1000px; margin: 0 auto">
      <router-view />
    </div>
  </div>
</template>

<script>
import {setRouters} from "@/router";

export default {
  name: "Front",
  data() {
    return {
      user: localStorage.getItem("user") ? JSON.parse(localStorage.getItem("user")) : {}
    }
  },
  created() {

  },
  methods: {
    logout() {
      this.$store.commit("logout")
      this.$message.success("退出成功")
    },
    login() {
          this.request.post("/user/login", this.user).then(res => {
            if(res.code === '200') {
              localStorage.setItem("user", JSON.stringify(res.data))  // 存储用户信息到浏览器
              localStorage.setItem("menus", JSON.stringify(res.data.menus))  // 存储用户信息到浏览器

              //动态设置当前用户的路由
              setRouters()
              this.$message.success("进入后台")
                this.$router.push("/")

            } else {
              this.$message.error(res.msg)
            }
          })

    }
  }
}
</script>

<style>
.item{
  display: inline-block;
  width: 100px;

  text-align: center;
  cursor: pointer
}
.item a {
  color: 	#1E90FF;
}
.item:hover{
  background-color: 	LightPink;
}
</style>