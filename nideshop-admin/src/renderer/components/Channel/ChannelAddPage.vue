<template>
    <div class="content-page">
        <div class="content-nav">
            <el-breadcrumb class="breadcrumb" separator="/">
                <el-breadcrumb-item :to="{ name: 'dashboard' }">首页</el-breadcrumb-item>
                <el-breadcrumb-item>商品管理</el-breadcrumb-item>
                <el-breadcrumb-item>{{infoForm.id ? '编辑首页分类' : '添加首页分类'}}</el-breadcrumb-item>
            </el-breadcrumb>
            <div class="operation-nav">
                <el-button type="primary" @click="goBackPage" icon="arrow-left">返回列表</el-button>
            </div>
        </div>
        <div class="content-main">
            <div class="form-table-box">
                <el-form ref="infoForm" :rules="infoRules" :model="infoForm" label-width="120px">

                    <el-form-item label="所属分类" prop="category_id">
                        <el-select :options="options" placeholder="请选择分类" @change="catagoryChange($event)" v-model="infoForm.category_id">
                          <el-option
                            v-for="item in options"
                            :key="item.id"
                            :label="item.name"
                            :value="item.id">
                          </el-option>
                        </el-select>
                    </el-form-item>

                    <el-form-item label="展示缩略图" prop="icon_url">
                        <el-upload class="image-uploader" name="icon_url"
                                   :action="api.rootUrl+ 'upload/channelThumb'" :show-file-list="false"
                                   :on-success="handleUploadImageSuccess" :headers="uploaderHeader">
                            <img v-if="infoForm.icon_url" :src="infoForm.icon_url" class="image-show">
                            <i v-else class="el-icon-plus image-uploader-icon"></i>
                        </el-upload>
                        <div class="form-tip">图片尺寸：24*24</div>
                    </el-form-item>
                    <el-form-item label="排序">
                        <el-input-number v-model="infoForm.sort_order" :min="1" :max="1000"></el-input-number>
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
                options:[],
                infoForm: {
                    id: '',
                    name: '',
                    category_id: '',
                    icon_url: '',
                    sort_order: 1
                },
                infoRules: {
                  category_id: [
                        { required: true, type: 'number' ,  message: '请选择标题名字', trigger: 'blur' },
                    ],
                  icon_url: [
                        { required: true, message: '请选择缩略图', trigger: 'blur' },
                    ],
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
                        this.axios.post('channel/add', this.infoForm).then((response) => {
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
            handleUploadImageSuccess(res, file) {
                if (res.errno === 0) {
                    switch (res.data.name) {
                        //专题图片
                        case 'icon_url':
                          this.infoForm.icon_url = res.data.fileUrl;
                            break;
                    }
                }
            },
            getInfo() {
                if (this.infoForm.id <= 0) {
                    return false
                }

                //加载专题详情
                let that = this
                this.axios.get('channel/info', {
                    params: {
                        id: that.infoForm.id
                    }
                }).then((response) => {
                    let resInfo = response.data.data;
                    console.log('单个数据',resInfo);
                    that.infoForm = resInfo;
                    let strs = resInfo.url.split("id=");
                    that.infoForm.category_id = +strs[1];
                    console.log('当前类型id',strs[1]);
                })
            },
            getCatalog(){
                let that = this;
                this.axios.get('category/topCategory')
                .then((response) => {
                  console.log('分类信息',response);
                  this.options = response.data.data;
                })
            },
            catagoryChange(category_id) {
                let that = this;
                let options = this.options;
                try {
                    options.forEach((item) => {
                        if(category_id == item.id){
                            that.infoForm.name = item.name;
                            throw new Error("ending"); //报错，就跳出循环
                        }
                    })

                }catch(e) {
                    // statements
                    console.log(e);
                }
            }
        },
        components: {},
        async mounted() {
            this.infoForm.id = this.$route.query.id || 0;
            await this.getCatalog();
            await this.getInfo();
            console.log(api)
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
        width: 187px;
        height: 105px;
        line-height: 105px;
        text-align: center;
    }

    .image-uploader .image-show {
        width: 187px;
        height: 105px;
        display: block;
    }

    .image-uploader.new-image-uploader {
        font-size: 28px;
        color: #8c939d;
        width: 165px;
        height: 105px;
        line-height: 105px;
        text-align: center;
    }

    .image-uploader.new-image-uploader .image-uploader-icon {
        font-size: 28px;
        color: #8c939d;
        width: 165px;
        height: 105px;
        line-height: 105px;
        text-align: center;
    }

    .image-uploader.new-image-uploader .image-show {
        width: 165px;
        height: 105px;
        display: block;
    }
</style>
