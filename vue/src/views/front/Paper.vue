<template>
  <div style="margin-bottom: 100px">
    <div style="margin: 10px 0">
      <el-card>
        <div v-for="(item, index) in questions" :key="item.id" style="margin: 20px 0">
          <div style="margin: 10px 0; font-size: 20px"><span>{{ index+1}}.</span>{{ item.name}}
            <span style="font-size: 14px" v-if="item.type ===1">(选择题)</span>
            <span style="font-size: 14px" v-if="item.type ===2">(判断题)</span>
            <span style="font-size: 14px" v-if="item.type ===3">(问答题)</span>
          </div>
          <div v-if="item.type ===1" style="margin: 10px">
            <span style="margin-right: 20px">A. {{item.a}}</span>
            <span style="margin-right: 20px">B. {{item.b}}</span>
            <span style="margin-right: 20px">C. {{item.c}}</span>
            <span style="margin-right: 20px">D. {{item.d}}</span>
          </div>
          <div style="margin: 10px 0">
            答案： {{ item.answer}}
          </div>
          <div style="margin: 10px 0">
            解析： {{ item.detail}}
          </div>
        </div>
      </el-card>
    </div>
  </div>
</template>

<script>
export default {
  name: "Paper",
  data(){
    return{
      questions: [] ,
      paperId: this.$route.query.paperId
    }
  },
  created() {
    this.request.get("/paper/view/"  + this.paperId).then(res =>{
      this.questions = res.data
    })
  }
}
</script>

<style scoped>

</style>