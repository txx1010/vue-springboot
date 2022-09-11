<template>
  <div style="margin-bottom: 100px">
    <div style="margin: 20px 0">
      <span style="font-size: 20px;color: #333333">{{ exam.name}}</span>
      <span style="font-size: 14px;color: #333333; margin-left: 20px">开始时间：{{ exam.time}}</span>
      <span style="font-size: 14px;color: #333333; margin-left: 20px">持续时间：{{ exam.duration}} 分</span>
      <span style="font-size: 14px;color: #333333; margin-left: 20px">考试教室：{{ exam.room}}</span>
    </div>
    <div style="margin: 10px 0">
      <el-card>
        <div v-for="(item, index) in questions" :key="item.id" style="margin: 20px 0">
          <div style="margin: 10px 0; font-size: 20px"><span>{{ index+1}}.</span>{{ item.name}}
            <span style="font-size: 14px" v-if="item.type ===1">(选择题)</span>
            <span style="font-size: 14px" v-if="item.type ===2">(判断题)</span>
            <span style="font-size: 14px" v-if="item.type ===3">(问答题)</span>
          </div>
          <div v-if="item.type ===1" style="margin: 10px">
            <span style="margin-right: 20px"><el-radio v-model="item['studentAnswer']" label="A">A. {{item.a}}</el-radio></span>
            <span style="margin-right: 20px"><el-radio v-model="item['studentAnswer']" label="B">B. {{item.b}}</el-radio></span>
            <span style="margin-right: 20px"><el-radio v-model="item['studentAnswer']" label="C">C. {{item.c}}</el-radio></span>
            <span style="margin-right: 20px"><el-radio v-model="item['studentAnswer']" label="D">D. {{item.d}}</el-radio></span>
          </div>
          <div v-if="item.type ===2" style="margin: 10px">
            <span style="margin-right: 20px"><el-radio v-model="item['studentAnswer']" label="是">是</el-radio></span>
            <span style="margin-right: 20px"><el-radio v-model="item['studentAnswer']" label="否">否</el-radio></span>
          </div>
          <div v-if="item.type ===3" style="margin: 10px">
            <el-input type="textarea" v-model="item['studentAnswer']"></el-input>
          </div>
<!--          <div style="margin: 10px 0">-->
<!--            答案： {{ item.answer}}-->
<!--          </div>-->
<!--          <div style="margin: 10px 0">-->
<!--            解析： {{ item.detail}}-->
<!--          </div>-->
        </div>
      </el-card>
      <div style="margin: 20px; text-align: center">
        <el-button size="medium" type="primary" @click="submitPaper">提 交</el-button>
        <el-button size="medium" type="warning" @click="$router.push('/front/exam')">取 消</el-button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "Paper",
  data(){
    return{
      questions: [] ,
      examId: this.$route.query.examId,
      exam:{}
    }
  },
  created() {
    this.request.get("/exam/" + this.examId).then(res => {
      this.exam = res.data
    })

    this.request.get("/examPaper/exam/"  + this.examId).then(res =>{  //根据考试id查询试卷id
      if( res.data ){
        this.request.get("/paper/view/" + res.data.paperId).then(res => {   //根据试卷id查询试题id
          this.questions = res.data
        })
      }
    })
  },
  methods: {
    submitPaper() {
      this.request.post("/studentpaper", {examId: this.examId, paper: JSON.stringify(this.questions)}).then(res => {
        if(res.code === '200'){
          this.$message.success("提交成功！")
        } else {
          this.$message.error(res.msg)
        }
      })
    }
  }
}
</script>

<style scoped>

</style>