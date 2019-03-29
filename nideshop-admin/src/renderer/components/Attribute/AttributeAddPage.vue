<template>
    <div class="content-page">
        <div class="content-nav">
            <el-breadcrumb class="breadcrumb" separator="/">
                <el-breadcrumb-item :to="{ name: 'dashboard' }">首页</el-breadcrumb-item>
                <el-breadcrumb-item>属性管理</el-breadcrumb-item>
                <el-breadcrumb-item>{{infoForm.id ? '编辑商品属性' : '添加商品属性'}}</el-breadcrumb-item>
            </el-breadcrumb>
            <div class="operation-nav">
                <el-button type="primary" @click="goBackPage" icon="arrow-left">返回列表</el-button>
            </div>
        </div>
        <div class="content-main">
            <div class="form-table-box">
                <el-form ref="infoForm" :rules="infoRules" :model="infoForm" label-width="120px">
                  <div class="" style="margin-bottom:60px">
                    编辑完在添加商品详情中使用，请先完成这些再去编辑商品详情
                  </div>
                    <el-form-item label="商品属性分类" prop="name">
                        <el-select v-model="infoForm.attribute_category_id" placeholder="请选择商品属性分类">
                            <el-option v-for="item in parentCategory" :key="item.id" :label="item.name" :value="item.id"></el-option>
                        </el-select>
                    </el-form-item>
                    <el-form-item label="商品属性名称" prop="name">
                        <el-input v-model="infoForm.name"></el-input>
                    </el-form-item>

                    <el-form-item>
                        <el-button type="primary" @click="onSubmitInfo">确定保存</el-button>
                        <el-button @click="goBackPage">取消</el-button>
                    </el-form-item>
                </el-form>
            </div>
        </div>
    </div>
</template>

<script>
  import api from '@/config/api';
  export default {
    data() {
      return {
        api:api,
        uploaderHeader: {
          'X-Nideshop-Token': localStorage.getItem('token') || '',
        },
        parentCategory: [],
        infoForm: {
          id: 0,
          name: "",
          attribute_category_id: ""
        },
        infoRules: {
          name: [
            { required: true, message: '请输入名称', trigger: 'blur' },
          ]
        },
      }
    },
    methods: {
      goBackPage() {
        this.$router.go(-1);
      },
      onSubmitInfo() {
        this.$refs['infoForm'].validate((valid) => {
          if (valid) {
            this.axios.post('attribute/add', this.infoForm).then((response) => {
              if (response.data.errno === 0) {
                this.$message({
                  type: 'success',
                  message: '保存成功'
                });
                this.$router.go(-1)
              } else {
                this.$message({
                  type: 'error',
                  message: '保存失败'
                })
              }
            })
          } else {
            return false;
          }
        });
      },
      getTopCategory() {
        this.axios.get('attribute_category/index').then((response) => {
          this.parentCategory = this.parentCategory.concat(response.data.data);
        })
      },
      getInfo() {
        if (this.infoForm.id <= 0) {
          return false
        }

        //加载分类详情
        let that = this
        this.axios.get('attribute/info', {
          params: {
            id: that.infoForm.id
          }
        }).then((response) => {
          let resInfo = response.data.data;
          resInfo.is_show = resInfo.is_show ? true : false;
          that.infoForm = resInfo;
        })
      }

    },
    components: {},
    mounted() {
      this.getTopCategory();
      this.infoForm.id = this.$route.query.id || 0;
      this.getInfo();
    }
  }

</script>

<style>
    .image-uploader{
        height: 105px;
    }
    .image-uploader .el-upload {
        border: 1px solid #d9d9d9;
        cursor: pointer;
        position: relative;
        overflow: hidden;
    }

    .image-uploader .el-upload:hover {
        border-color: #20a0ff;
    }

    .image-uploader .image-uploader-icon {
        font-size: 28px;
        color: #8c939d;
        min-width: 105px;
        height: 105px;
        line-height: 105px;
        text-align: center;
    }

    .image-uploader .image-show {
        min-width: 105px;
        height: 105px;
        display: block;
    }

</style>
