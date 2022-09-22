<template>
  <div style="color: #666;font-size: 14px;">
    <div style="padding-bottom: 10px">
      <b>欢迎你！{{ user.nickname }}</b>
    </div>
    <el-card>
      这是我自主开发的一个教务管理系统
      <el-divider />
      项目文档是我自己写的 在doc目录下 里面是我在项目里学到的知识点、遇到的问题及解决、以及运行成功截图<br><br>
      在这里特别感谢b站up"程序员青戈"<br><br>
    </el-card>
    <div style="height: 1px; background: #ddd; margin: 20px 0"/>

    <el-row :gutter="30">
      <el-col :span="12">
        <div style="padding: 10px 0; font-size: 20px">毕设专用框架</div>
        <div>
          这是一款适合于毕业设计的大学教务管理系统，结构清晰，一定不要错过哦
        </div>
        <div class="m-10"><el-button type="danger"><i class="el-icon-coin"></i> 免费开源</el-button></div>
        <div class="m-10"><el-button type="primary"><i class="el-icon-s-custom"></i> 交流wx：tx13087394425</el-button></div>
        <div class="m-10">
          <el-button type="primary"><i class="el-icon-link"></i> <a style="color: #fff" href="https://gitee.com/sugar-someone/vue-springboot.git">Gitee源码</a></el-button>
        </div>
      </el-col>
      <el-col :span="12">
<!--        <div style="padding: 20px 0; font-size: 20px">技术栈</div>-->
        <el-row>
          <el-col :span="12" style="line-height: 30px">
            <div><b>后端</b></div>
            <div>SpringBoot2</div>
            <div>Mysql</div>
            <div>Hutool</div>
            <div>Poi</div>
            <div>Lombok</div>
            <div>Mybatis/Mybatis-plus</div>
            <div>JWT</div>
            <div>Websocket</div>
            <div>Redis</div>
            <div>Alipay</div>
            <div>Email</div>
          </el-col>
          <el-col :span="12" style="line-height: 30px">
            <b>前端</b>
            <div>Vue2</div>
            <div>Vue-Router</div>
            <div>VueX</div>
            <div>ElementUI</div>
            <div>Axios</div>
            <div>Ecahrts</div>
            <div>Websocket</div>
            <div>MavonEditor</div>
          </el-col>
        </el-row>
      </el-col>
    </el-row>

  </div>
</template>

<script>
export default {
  name: "Home",
  data() {
    return {
      user: localStorage.getItem("user") ? JSON.parse(localStorage.getItem("user")) : {}
    }
  }
}
</script>
