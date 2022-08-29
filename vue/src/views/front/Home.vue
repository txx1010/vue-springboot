<template>
  <div>
    <div style="margin: 10px 0">
      <el-carousel height="450px" :interval="5000">
        <el-carousel-item v-for="item in imgs" :key="item">
          <img :src="item" alt="" style="width: 100%">
        </el-carousel-item>
      </el-carousel>
    </div>

    <div style="margin: 10px 0">
      <el-row :gutter="10">
        <el-col :span="6" v-for="item in files" :key="item.id" style="margin-bottom: 10px">

          <div style="border: 1px solid #ccc; padding-bottom: 10px">
            <img :src="item.url" alt="" style="width: 100%">
            <div style="color: #666; padding: 10px">{{ item.name }}</div>
            <div style="padding: 10px"><el-button type="primary">查看</el-button></div>
          </div>
        </el-col>
      </el-row>
    </div>
  </div>
</template>

<script>
export default {
  name: "FrontHome",
  data() {
    return {
      imgs: [
        'https://admission.ujn.edu.cn/images/311.jpg',
        'https://admission.ujn.edu.cn/images/2xiu.jpg',
        'https://admission.ujn.edu.cn/images/DSC_2377dibanxiu.jpg',
        'https://admission.ujn.edu.cn/dfiles/20028/public/uploads/zhanshitu/201712/5a2e43c87eb21.jpg'
      ],
      files: []
    }
  },
  created() {
    this.request.get("/echarts/file/front/all").then(res => {
      console.log(res.data)
      this.files = res.data.filter(v => v.type === 'png' || v.type === 'jpg' || v.type === 'webp')
    })
  },
  methods: {

  },
}
</script>

<style>

</style>