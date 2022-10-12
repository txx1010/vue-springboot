<template>
  <div>
    <div style="margin: 10px 0">
      <el-input style="width: 200px" placeholder="请输入名称" suffix-icon="el-icon-search" v-model="name"></el-input>
      <!--      <el-input style="width: 200px" placeholder="请输入" suffix-icon="el-icon-message" class="ml-5" v-model="email"></el-input>-->
      <!--      <el-input style="width: 200px" placeholder="请输入" suffix-icon="el-icon-position" class="ml-5" v-model="address"></el-input>-->
      <el-button class="ml-5" type="primary" @click="load">搜索</el-button>
      <el-button type="warning" @click="reset">重置</el-button>
    </div>

    <div style="margin: 10px 0">
      <el-button type="primary" @click="handleAdd">新增 <i class="el-icon-circle-plus-outline"></i></el-button>
      <el-popconfirm
          class="ml-5"
          confirm-button-text='确定'
          cancel-button-text='我再想想'
          icon="el-icon-info"
          icon-color="red"
          title="您确定批量删除这些数据吗？"
          @confirm="delBatch"
      >
        <el-button type="danger" slot="reference">批量删除 <i class="el-icon-remove-outline"></i></el-button>
      </el-popconfirm>
      <!-- <el-upload action="http://localhost:9090/orders/import" :show-file-list="false" accept="xlsx" :on-success="handleExcelImportSuccess" style="display: inline-block">
        <el-button type="primary" class="ml-5">导入 <i class="el-icon-bottom"></i></el-button>
      </el-upload>
      <el-button type="primary" @click="exp" class="ml-5">导出 <i class="el-icon-top"></i></el-button> -->
    </div>

    <el-table :data="tableData" border stripe :header-cell-class-name="'headerBg'"  @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55"></el-table-column>
      <el-table-column prop="id" label="ID" width="80" sortable></el-table-column>
      <el-table-column prop="name" label="名称"></el-table-column>
      <el-table-column prop="teacher" label="专业指导员"></el-table-column>
      <el-table-column label="操作"  width="300" align="center">
        <template slot-scope="scope">
          <el-button type="primary" @click="handleCourse(scope.row.id)">设置课程</el-button>
          <el-button type="success" @click="handleEdit(scope.row)">编辑 <i class="el-icon-edit"></i></el-button>
          <el-popconfirm
              class="ml-5"
              confirm-button-text='确定'
              cancel-button-text='我再想想'
              icon="el-icon-info"
              icon-color="red"
              title="您确定删除吗？"
              @confirm="del(scope.row.id)"
          >
            <el-button type="danger" slot="reference">删除 <i class="el-icon-remove-outline"></i></el-button>
          </el-popconfirm>
        </template>
      </el-table-column>
    </el-table>
    <div style="padding: 10px 0">
      <el-pagination
          @size-change="handleSizeChange"
          @current-change="handleCurrentChange"
          :current-page="pageNum"
          :page-sizes="[2, 5, 10, 20]"
          :page-size="pageSize"
          layout="total, sizes, prev, pager, next, jumper"
          :total="total">
      </el-pagination>
    </div>

    <el-dialog title="信息" :visible.sync="dialogFormVisible" width="30%" :close-on-click-modal="false">
      <el-form label-width="100px" size="small" style="width: 90%">
        <el-form-item label="名称">
          <el-input v-model="form.name" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="专业指导员">
          <el-input v-model="form.teacher" autocomplete="off"></el-input>
        </el-form-item>

      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="dialogFormVisible = false">取 消</el-button>
        <el-button type="primary" @click="save">确 定</el-button>
      </div>
    </el-dialog>

    <el-dialog title="排课" :visible.sync="dialogFormVisible1" width="50%" :close-on-click-modal="false">
      <div style="margin-bottom: 10px">
        <el-button type="primary" @click="handleAdd1">新增 <i class="el-icon-circle-plus-outline"></i></el-button>
      </div>
      <el-table :data="tableData1" border stripe >
        <el-table-column prop="majorId" label="专业">
          <template v-slot="scope">
            <span >{{ majors.find(v => v.id === scope.row.majorId) ? tableData.find(v => v.id === scope.row.majorId).name : ''}}</span>
          </template>
        </el-table-column>
        <el-table-column label="课程">
          <template v-slot="scope">
          <el-select clearable v-model="scope.row.courseId" placeholder="请选择专业" style="width: 100%">
            <el-option v-for="item in courses"
                       :key="item.id" :label="item.name" :value="item.id"></el-option>
          </el-select>
          </template>
        </el-table-column>

        <el-table-column  label="日期">
          <template v-slot="scope">
          <el-select clearable v-model="scope.row.weekDay" placeholder="请选择" style="width: 100%">
            <el-option v-for="item in ['周一','周二','周三','周四','周五','周六','周末']"
                       :key="item" :label="item" :value="item"></el-option>
          </el-select>
          </template>
        </el-table-column>

        <el-table-column prop="section" label="第几节">
          <template v-slot="scope">
          <el-select clearable v-model="scope.row.section" placeholder="请选择" style="width: 100%">
            <el-option v-for="item in ['一','二','三','四','五']"
                       :key="item" :label="item" :value="item"></el-option>
          </el-select>
          </template>
        </el-table-column>
        <el-table-column label="操作"align="center">
        <template slot-scope="scope">
            <el-button type="danger" @click="delCourse(scope.row.id)">删除 <i class="el-icon-remove-outline"></i></el-button>
        </template>
        </el-table-column>
      </el-table>
      <div slot="footer" class="dialog-footer">
        <el-button @click="dialogFormVisible1 = false">取 消</el-button>
        <el-button type="primary" @click="save1">确 定</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
export default {
  name: "Majors",
  data() {
    return {
      tableData: [],
      tableData1: [],
      total: 0,
      pageNum: 1,
      pageSize: 10,
      name: "",
      form: {},
      dialogFormVisible: false,
      dialogFormVisible1: false,
      multipleSelection: [],
      user: localStorage.getItem("user") ? JSON.parse(localStorage.getItem("user")) : {},
      majorId: null,
      courses:[]
    }
  },
  created() {
    this.load()
  },
  methods: {
    loadCourses(){
      this.request.get("/majorCourse/major/" + this.majorId).then(res => {
        this.tableData1 = res.data
      })
    },
    handleAdd1(){
      this.request.get("/course").then(res => {
        this.courses = res.data.filter(v => v.type === '是')
      })
      this.tableData1.push({majorId: this.majorId})
    },
    handleCourse(majorId){
      this.majorId = majorId
      this.loadCourses()
      this.dialogFormVisible1 = true
    },
    pay(row) {
      const url = `http://localhost:9090/alipay/pay?subject=${row.name}&traceNo=${row.no}&totalAmount=${row.total}`
      window.open(url);  //  得到一个url，这个url就是支付宝支付的界面url, 新窗口打开这个url就可以了
    },
    returnPay(row) {
      const url = `http://localhost:9090/alipay/return?totalAmount=${row.total}&alipayTraceNo=${row.alipayNo}&traceNo=${row.no}`
      this.request.get(url).then(res => {
        if(res.code === '200') {
          this.$message.success("退款成功")
        }  else {
          this.$message.error(res.msg)
        }
        this.load()
      })
    },
    load() {
      this.request.get("/major/page", {
        params: {
          pageNum: this.pageNum,
          pageSize: this.pageSize,
          name: this.name,
        }
      }).then(res => {
        this.tableData = res.data.records
        this.total = res.data.total
      })

      this.request.get("/course").then(res => {
        this.courses = res.data
      })
      this.request.get("/major").then(res => {
        this.majors = res.data
      })
    },
    save() {
      this.request.post("/major", this.form).then(res => {
        if (res.code === '200') {
          this.$message.success("保存成功")
          this.dialogFormVisible = false
          this.load()
        } else {
          this.$message.error("保存失败")
        }
      })
    },
    save1() {

      //对课程id进行去重,然后对比原数组，看看是否有重复的课程
      if( new Set(this.tableData1.map(v => v.courseId + v.weekDay + v.section)).size !== this.tableData1.length) {
        this.$message.warning("课程重复")
      }

      this.request.post("/majorCourse/" + this.majorId, this.tableData1).then(res => {
        if (res.code === '200') {
          this.$message.success("保存成功")
          this.dialogFormVisible1 = false
          this.loadCourses()
        } else {
          this.$message.error("保存失败")
        }
      })
    },
    handleAdd() {
      this.dialogFormVisible = true
      this.form = {}
      this.$nextTick(() => {
        if(this.$refs.img) {
          this.$refs.img.clearFiles();
        }
        if(this.$refs.file) {
          this.$refs.file.clearFiles();
        }
      })
    },
    handleEdit(row) {
      this.form = JSON.parse(JSON.stringify(row))
      this.dialogFormVisible = true
      this.$nextTick(() => {
        if(this.$refs.img) {
          this.$refs.img.clearFiles();
        }
        if(this.$refs.file) {
          this.$refs.file.clearFiles();
        }
      })
    },
    del(id) {
      this.request.delete("/major/" + id).then(res => {
        if (res.code === '200') {
          this.$message.success("删除成功")
          this.load()
        } else {
          this.$message.error("删除失败")
        }
      })
    },
    delCourse(id){
      // this.request.delete("/majorCourse/" + id).then(res => {
      //   if (res.code === '200') {
      //     this.$message.success("删除成功")
      //     this.loadCourses()
      //   } else {
      //     this.$message.error("删除失败")
      //   }
      // })
      const index = this.tableData1.findIndex(v => v.id ===id)
      this.tableData1.splice(index,1)
    },
    handleSelectionChange(val) {
      console.log(val)
      this.multipleSelection = val
    },
    delBatch() {
      if (!this.multipleSelection.length) {
        this.$message.error("请选择需要删除的数据")
        return
      }
      let ids = this.multipleSelection.map(v => v.id)  // [{}, {}, {}] => [1,2,3]
      this.request.post("/major/del/batch", ids).then(res => {
        if (res.code === '200') {
          this.$message.success("批量删除成功")
          this.load()
        } else {
          this.$message.error("批量删除失败")
        }
      })
    },
    reset() {
      this.name = ""
      this.load()
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
    handleFileUploadSuccess(res) {
      this.form.file = res
    },
    handleImgUploadSuccess(res) {
      this.form.img = res
    },
    download(url) {
      window.open(url)
    },
    exp() {
      window.open("http://localhost:9090/major/export")
    },
    handleExcelImportSuccess() {
      this.$message.success("导入成功")
      this.load()
    }
  }
}
</script>


<style>
.headerBg {
  background: #eee!important;
}
</style>
