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
      <!-- <el-upload action="http://localhost:9090/paper/import" :show-file-list="false" accept="xlsx" :on-success="handleExcelImportSuccess" style="display: inline-block">
        <el-button type="primary" class="ml-5">导入 <i class="el-icon-bottom"></i></el-button>
      </el-upload>
      <el-button type="primary" @click="exp" class="ml-5">导出 <i class="el-icon-top"></i></el-button> -->
    </div>

    <el-table :data="tableData" border stripe :header-cell-class-name="'headerBg'"  @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55"></el-table-column>
      <el-table-column prop="id" label="ID" width="80" sortable></el-table-column>
      <el-table-column prop="name" label="名称"></el-table-column>
      <el-table-column prop="score" label="总分"></el-table-column>
      <el-table-column prop="duration" label="时长(分)"></el-table-column>
      <el-table-column label="所属课程">
        <template v-slot="scope">
          <span v-if="courses && courses.length">{{ courses.find(v => v.id === scope.row.courseId).name}}</span>
        </template>
      </el-table-column>
      <el-table-column label="考卷">
        <template v-slot="scope">
          <el-button type="primary" @click="viewPaper(scope.row.id)">查看考卷</el-button>
        </template>
      </el-table-column>

      <el-table-column label="操作"  width="380" align="center">
        <template slot-scope="scope">
          <el-button type="primary" plain @click="handlePaper(scope.row.id, scope.row.courseId)">手动组卷 <i class="el-icon-document"></i></el-button>
          <el-button type="primary" @click="takePaper(scope.row.id, scope.row.courseId)">自动组卷 <i class="el-icon-document"></i></el-button>
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

    <el-dialog title="手动组卷" :visible.sync="dialogFormVisible3" width="50%" :close-on-click-modal="false">
      <div style="width: 90%;padding-left: 120px">
        <el-transfer filter-placeholder="请输入类型：1选择，2判断，3问答" filterable :filter-method="filterMethod"
                     v-model="form2.handleQuestionIds" :data="paperQuestions" :props="{key: 'id',label: 'name'}"></el-transfer>
      </div>
      <div slot="footer" class="dialog-footer">
        <el-button @click="dialogFormVisible3 = false">取 消</el-button>
        <el-button type="primary" @click="generateHandPaper">确 定</el-button>
      </div>
    </el-dialog>

    <el-dialog title="考卷" :visible.sync="dialogFormVisible2" width="60%" :close-on-click-modal="false">
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
    </el-dialog>

    <el-dialog title="组卷" :visible.sync="dialogFormVisible1" width="30%" :close-on-click-modal="false">
      <el-form label-width="100px" size="small" style="width: 90%">
        <el-form-item label="选择题数量">
          <el-input v-model="form1.type1" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="填空题数量">
          <el-input v-model="form1.type2" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="问答题数量">
          <el-input v-model="form1.type3" autocomplete="off"></el-input>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="dialogFormVisible = false">取 消</el-button>
        <el-button type="primary" @click="generatePaper">确 定</el-button>
      </div>
    </el-dialog>

    <el-dialog title="信息" :visible.sync="dialogFormVisible" width="30%" :close-on-click-modal="false">
      <el-form label-width="100px" size="small" style="width: 90%">
        <el-form-item label="名称">
          <el-input v-model="form.name" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="课程">
          <el-select clearable v-model="form.courseId" placeholder="请选择" style="width: 100%">
            <el-option v-for="item in courses"
                       :key="item.id" :label="item.name" :value="item.id"></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="总分">
          <el-input v-model="form.score" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="时长(分)">
          <el-input v-model="form.duration" autocomplete="off"></el-input>
        </el-form-item>

      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="dialogFormVisible = false">取 消</el-button>
        <el-button type="primary" @click="save">确 定</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
export default {
  name: "Paper",
  data() {
    return {
      tableData: [],
      total: 0,
      pageNum: 1,
      pageSize: 10,
      name: "",
      form: {},
      form1: {},
      form2: {},
      dialogFormVisible: false,
      dialogFormVisible1: false,
      dialogFormVisible2: false,
      dialogFormVisible3: false,
      multipleSelection: [],
      user: localStorage.getItem("user") ? JSON.parse(localStorage.getItem("user")) : {},
      courses:[],
      questions:[],
      courseId: null,
      type: null,
      paperQuestions: [],
      // paperQuestionsOrigin: []
    }
  },
  created() {
    this.load()
  },
  methods: {
    filterMethod(query, item){
      return !query || query == item.type;
    },
    // selectQuestion(){
    //   //通过备份的原始数据进行筛选
    //   this.paperQuestions = this.paperQuestionsOrigin.filter(v => v.type === this.type)
    // },
    handlePaper(paperId, courseId){
      this.request.get("/question").then(res =>{
        this.paperQuestions = res.data.filter(v => v.courseId === courseId)
        //备份原始数据
        // this.paperQuestionsOrigin = JSON.parse(JSON.stringify(this.paperQuestions))
        // this.type = null
      })
      this.form2 = {handleQuestionIds:[], paperId: paperId}
      this.dialogFormVisible3 = true
    },
    viewPaper(paperId){
      this.request.get("/paper/view/"  + paperId).then(res =>{
        this.questions = res.data
        this.dialogFormVisible2 = true
      })
    },
    takePaper(paperId,courseId){
      this.form1 = {type1: 4, type2: 4,type3: 2 ,paperId: paperId,courseId}
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
      this.request.get("/paper/page", {
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
    generatePaper(){
      this.request.post("/paper/takePaper",this.form1).then(res =>{
            if (res.code === '200') {
              this.$message.success("组卷成功")
              this.dialogFormVisible1 = false
            } else {
              this.$message.error(res.msg)
            }
      })
    },
    generateHandPaper(){
      this.request.post("/paper/handPaper",this.form2).then(res =>{
        if (res.code === '200') {
          this.$message.success("组卷成功")
          this.dialogFormVisible3 = false
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    save() {
      this.request.post("/paper", this.form).then(res => {
        if (res.code === '200') {
          this.$message.success("保存成功")
          this.dialogFormVisible = false
          this.load()
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
      this.request.delete("/paper/" + id).then(res => {
        if (res.code === '200') {
          this.$message.success("删除成功")
          this.load()
        } else {
          this.$message.error("删除失败")
        }
      })
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
      this.request.post("/paper/del/batch", ids).then(res => {
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
      window.open("http://localhost:9090/paper/export")
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
