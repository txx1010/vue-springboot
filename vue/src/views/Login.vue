<template>
  <div class="wrapper">
    <div style="height: 60px; line-height: 60px; font-size: 20px; padding-left: 50px; color: white;
      background-color: rgba(0,0,0,0.2)">教务系统</div>

    <div style="margin: 100px auto; background: white; width: 500px; border-radius: 10px; overflow: hidden">
      <el-tabs type="card" v-model="activeName" >

        <el-tab-pane label="账号密码登录" name="first">
          <div style="margin: 20px auto; background-color: #fff; width: 350px; height: 220px; padding: 20px; border-radius: 10px">
            <el-form :model="user" :rules="rules" ref="userForm">
              <el-form-item prop="username">
                <el-input size="medium" prefix-icon="el-icon-user" v-model="user.username"></el-input>
              </el-form-item>
              <el-form-item prop="password">
                <el-input size="medium" prefix-icon="el-icon-lock" show-password v-model="user.password"></el-input>
              </el-form-item>
              <!--                      <el-form-item>-->
              <!--                        <div style="display: flex">-->
              <!--                          <el-input size="mid" v-model="code" style="width: 200px"></el-input>-->
              <!--                          <span @click="refreshCode" style="cursor: pointer; flex: 1;">-->
              <!--                            <Identify :identifyCode="identifyCode"></Identify>-->
              <!--                         </span>-->
              <!--                        </div>-->
              <!--                      </el-form-item>-->

              <el-form-item style="margin: 10px 0; text-align: right">
                <el-button type="warning" size="medium"  autocomplete="off" @click="$router.push('/register')">前往注册</el-button>
                <el-button type="primary" size="medium"  autocomplete="off" @click="loginAccount">登录</el-button>

              </el-form-item>
              <el-form-item style="margin: 10px 0; text-align: right">
                <el-button type="text" size="medium"  autocomplete="off" @click="handlePass">找回密码</el-button>
              </el-form-item>
            </el-form>
          </div>
        </el-tab-pane>

        <el-tab-pane label="邮箱登录" name="second">
          <div style="margin: 20px auto; background-color: #fff; width: 350px; height: 220px; padding: 20px; border-radius: 10px">
            <el-form :model="user" :rules="rules" ref="userForm">
              <el-form-item prop="email">
                <el-input size="medium" prefix-icon="el-icon-message" v-model="user.email"></el-input>
              </el-form-item>
              <el-form-item prop="code">
                <el-input size="medium" prefix-icon="el-icon-lock" style="width: 190px" v-model="user.code"></el-input>
                <el-button type="primary" size="medium" class="ml-5" @click="sendEmailCode(1)">获取验证码</el-button>
              </el-form-item>

              <el-form-item style="margin: 10px 0; text-align: right">
                <el-button type="warning" size="medium"  autocomplete="off" @click="$router.push('/register')">前往注册</el-button>
                <el-button type="primary" size="medium"  autocomplete="off" @click="loginEmail">登录</el-button>

              </el-form-item>
              <el-form-item style="margin: 10px 0; text-align: right">
                <el-button type="text" size="mid"  autocomplete="off" @click="handlePass">找回密码</el-button>
              </el-form-item>
            </el-form>
          </div>
        </el-tab-pane>

      </el-tabs>
    </div>



    <el-dialog title="找回密码" :visible.sync="dialogFormVisible" width="30%" >
      <el-form label-width="100px" size="small">
        <el-form-item label="邮箱">
          <el-input size="medium" v-model="pass.email" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="验证码">
          <el-input size="medium"  style="width: 200px" v-model="pass.code"></el-input>
          <el-button type="primary" size="medium" class="ml-5" @click="sendEmailCode(2)">获取验证码</el-button>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="dialogFormVisible = false">取 消</el-button>
        <el-button type="primary" @click="passwordBack">重置密码</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { setRouters } from "@/router";

export default {
  name: "Login",
  data() {
    return {
      activeName: 'first',
      user: {},
      pass: {},
      code: '',
      dialogFormVisible: false,
      // 图片验证码
      identifyCode: '',
      // 验证码规则
      identifyCodes: '3456789ABCDEFGHGKMNPQRSTUVWXY',
      rules: {
        username: [
          { required: true, message: '请输入用户名', trigger: 'blur' },
          { min: 1, max: 20, message: '长度在 20个字符以内', trigger: 'blur' }
        ],
        password: [
          { required: true, message: '请输入密码', trigger: 'blur' },
          { min: 1, max: 20, message: '长度在 20个字符以内', trigger: 'blur' }
        ]
      }
    }
  },
  mounted() {
    // 验证码
    // this.refreshCode()
    // 获取地理位置
    var geolocation = new BMapGL.Geolocation();
    geolocation.getCurrentPosition(function(r){
      if(this.getStatus() == BMAP_STATUS_SUCCESS){
        const province = r.address.province
        const city = r.address.city
        localStorage.setItem("location", province + city)
      }
    });
  },
  methods: {
    sendEmailCode(type) {
      let email;
      if (type === 1) {
        email = this.user.email
      } else if(type === 2) {
        email = this.pass.email
      }
      if(!email) {
        this.$message.warning("请输入邮箱账号")
        return
      }
      if(!/^\w+((.\w+)|(-\w+))@[A-Za-z0-9]+((.|-)[A-Za-z0-9]+).[A-Za-z0-9]+$/.test(email)) {
        this.$message.warning("请输入正确的邮箱账号")
        return
      }
      // 发送邮箱验证码
      this.request.get("/user/email/" + email + "/" + type).then(res => {
        if (res.code === '200') {
          this.$message.success("发送成功")
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    loginAccount() {
      // if (this.code !== this.identifyCode.toLowerCase()) {
      //   this.$message({
      //     type: "error",
      //     message: "验证码错误"
      //   })
      //   return;
      // }
      this.$refs['userForm'].validate((valid) => {
        if (valid) {  // 表单校验合法
          this.request.post("/user/loginAccount", this.user).then(res => {
            if(res.code === '200') {
              localStorage.setItem("user", JSON.stringify(res.data))  // 存储用户信息到浏览器
              localStorage.setItem("menus", JSON.stringify(res.data.menus))  // 存储用户信息到浏览器

              // 动态设置当前用户的路由
              setRouters()
              this.$router.push("/front/home")
              // this.$router.push("/")
              this.$message.success("登录成功")
            } else {
              this.$message.error(res.msg)
            }
          })
        }
      });
    },
    loginEmail() {
      if (!this.user.email) {
        this.$message.warning("请输入邮箱")
        return
      }
      if (!this.user.code) {
        this.$message.warning("请输入验证码")
        return
      }
      this.request.post("/user/loginEmail", this.user).then(res => {
        if(res.code === '200') {
          localStorage.setItem("user", JSON.stringify(res.data))  // 存储用户信息到浏览器
          localStorage.setItem("menus", JSON.stringify(res.data.menus))  // 存储用户信息到浏览器

          // 动态设置当前用户的路由
          setRouters()
          this.$router.push("/front/home")
          this.$message.success("登录成功")
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    // 切换验证码
    refreshCode() {
      this.identifyCode = ''
      this.makeCode(this.identifyCodes, 4)
    },
    // 生成随机验证码
    makeCode(o, l) {
      for (let i = 0; i < l; i++) {
        this.identifyCode += this.identifyCodes[Math.floor(Math.random() * (this.identifyCodes.length))]
      }
    },
    handlePass() {
      this.dialogFormVisible = true
      this.pass = {}
    },
    passwordBack() {
      this.request.put("/user/reset", this.pass).then(res => {
        if (res.code === '200') {
          this.$message.success("重置密码成功，新密码为：123，请尽快修改密码")
          this.dialogFormVisible = false
        } else {
          this.$message.error(res.msg)
        }
      })
    }
  }
}
</script>

<style>
.wrapper {
  height: 100vh;
  /*background-image: linear-gradient(to bottom right, #4169E1 , 	#87CEFA);*/
  background-image: linear-gradient(to bottom right, #FC466B, #3F5EFB);
  overflow: hidden;
}
</style>

