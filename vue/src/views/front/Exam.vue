<template>
  <div style="margin-bottom: 100px;">
      <div style="margin: 20px 0; font-size: 20px; color: #1E90FF">考试列表</div>
      <div style="border: 1px solid #ccc; padding: 10px; border-radius: 10px; margin: 10px 0 "v-for="item in tableData" :key="item.id">
        <div style="color: #333333; margin:10px 0 ;font-size: 20px">{{ item.name }}</div>
        <div style="color: #666; margin:10px 0 ">
          <span>教室：{{ item.room}}</span>
          <span style="margin-left: 20px">时间：{{ item.time}}</span>
          <span style="margin-left: 20px">监考老师：{{ item.teacher}}</span>
          <span style="margin-left: 20px">考试状态：{{ item.state}}</span>
        </div>
        <div style="margin: 10px 0">
          <el-button style="margin-left: 20px" type="primary" @click="sign(item.id)">报名</el-button>
          <el-button style="margin-left: 20px" type="primary" @click="doPaper(item.id)" v-if="item.enable && item.state === '进行中'">开始考试</el-button>
        </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "FrontHome",
  data() {
    return {
      tableData: [],
      total: 0,
      pageNum: 1,
      pageSize: 10,
      name: "",
      user: localStorage.getItem("user") ? JSON.parse(localStorage.getItem("user")) : {},

    }
  },
  created() {
    this.load()
  },
  methods: {
    doPaper(examId){
      this.form1 = { examId: examId}
      this.request.get("/examPaper/exam/" + examId).then(res =>{
            if(res.data) {
              this.$router.push('/front/paper?paperId=' + res.data.paperId)
            } else {
              this.$message.error("考试尚未出卷，请联系考官")
            }
    })
    },
    sign(examId){
      let form = {userId: this.user.id, examId: examId}
      this.request.post("/sign",form).then(res => {
        if (res.code === '200') {
          this.$message.success("报名成功")
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    load() {
      this.request.get("/exam/page/front", {
        params: {
          pageNum: this.pageNum,
          pageSize: this.pageSize,
          name: this.name,
        }
      }).then(res => {
        this.tableData = res.data.records
        this.total = res.data.total
      })
      this.request.get("/course").then( res =>{
        this.courses = res.data
      })
    },
    handleSizeChange(pageSize) {
      console.log(pageSize)
      this.pageSize = pageSize
      this.load()
    },
    handleCurrentChange(pageNum) {
      console.log(pageNum)
      this.pageNum = pageNum
      this.load()
    },

  },
}
</script>

<style>

</style>