<template>
  <div>
    <el-table :data="paper" border stripe :header-cell-class-name="'headerBg'"  >
      <el-table-column prop="id" label="题目ID" width="80" sortable></el-table-column>
      <el-table-column prop="name" label="题目名称"></el-table-column>
      <el-table-column prop="type" label="题目类型">
        <template v-slot="scope">
          <span v-if="scope.row.type === 1">选择题</span>
          <span v-if="scope.row.type === 2">判断题</span>
          <span v-if="scope.row.type === 3">问答题</span>
        </template>
      </el-table-column>
      <el-table-column prop="a" label="a选项"></el-table-column>
      <el-table-column prop="b" label="b选项"></el-table-column>
      <el-table-column prop="c" label="c选项"></el-table-column>
      <el-table-column prop="d" label="d选项"></el-table-column>
      <el-table-column prop="score" label="标准分数"></el-table-column>
      <el-table-column prop="answer" label="标准答案"></el-table-column>
      <el-table-column prop="studentAnswer" label="学生答案"></el-table-column>
      <el-table-column prop="detail" label="解析"></el-table-column>
      <el-table-column prop="studentScore" label="得分">
        <template v-slot="scope">
          <el-input v-model="scope.row.studentScore"></el-input>
        </template>
      </el-table-column>
    </el-table>
    <div style="margin: 20px 0">
      <el-button type="primary" @click="submitScore">提 交</el-button>
    </div>
  </div>
</template>

<script>
export default {
  name: "HandlePaper",
  data(){
    return {
      sp: this.$route.query.sp,
      paper: [],
    }
  },
  created() {
    this.request.get("/studentpaper/" + this.sp).then(res => {
      this.paper = JSON.parse(res.data.paper)
      if(this.paper && this.paper.length) {
        this.paper.forEach(item => {  //自动阅卷
          if(item.answer === item.studentAnswer) {
            item.studentScore = item.score
          }
        })
      }
    })
  },
  methods:{
    submitScore(){
      let sum = 0
      this.paper.forEach(item => {
        if(item.studentScore == null){
          item.studentScore =0
        }
        sum += parseInt(item.studentScore)
      })
      this.request.post("/studentpaper/", {id: this.sp, score: sum}).then(res =>{
        this.$message.success("打分成功！")
        this.$router.push('/studentpaper')
      })
    }
  }
}
</script>

<style scoped>

</style>