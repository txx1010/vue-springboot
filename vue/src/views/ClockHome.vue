<template>
  <div style="color: #666;font-size: 14px;">
    <div style="padding-bottom: 20px">
      <b>您好！{{ user.nickname }}</b>
    </div>
    <el-card>
      欢迎使用本系统
      <el-divider />

    </el-card>

    <el-card style="margin-top: 20px">
      <div style="margin: 20px 0; font-size: 20px">{{ new Date().getFullYear() + '年' + (new Date().getMonth() + 1) + '月' + new Date().getDate() + '日' }}</div>
      <div style="width: 200px; height: 200px; line-height: 200px; border-radius: 50%; background-color: #1E90FF;
        font-size: 50px; color: #fff; text-align: center; cursor: pointer; box-shadow: 0 0 30px rgba(0, 0, 0, .2);" @click="clock">
        打 卡
      </div>
    </el-card>

  </div>
</template>

<script>

export default {
  name: "ClockHome",
  data() {
    return {
      user: localStorage.getItem("user") ? JSON.parse(localStorage.getItem("user")) : {}
    }
  },
  methods: {
    clock() {
      const location = localStorage.getItem("location")
      const username = this.user.username

      this.request.post("/clock", { user: username, location: location }).then(res => {
        if (res.code === '200') {
          this.$message.success("打卡成功")
        } else {
          this.$message.error(res.msg)
        }
      })
    }
  }
}
</script>

