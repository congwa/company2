<template>
    <div class="content-page">
        <div class="content-nav">
            <el-breadcrumb class="breadcrumb" separator="/">
                <el-breadcrumb-item :to="{ name: 'dashboard' }">首页</el-breadcrumb-item>
                <el-breadcrumb-item>商品规格管理</el-breadcrumb-item>
                <el-breadcrumb-item>添加商品规格</el-breadcrumb-item>
            </el-breadcrumb>
            <div class="operation-nav">
                <el-button type="primary" @click="goBackPage" icon="arrow-left">返回列表</el-button>
            </div>
        </div>
        <div class="content-main">
            <div class="form-table-box">
                <el-form ref="infoForm" :rules="infoRules" :model="infoForm" label-width="120px">

                    <el-form-item label="规格所属分类" >
                        <el-select :options="options" placeholder="请选择分类"  v-model="infoForm.specification_id">
                          <el-option
                            v-for="item in options"
                            :key="item.id"
                            :label="item.name"
                            :value="item.id">
                          </el-option>
                        </el-select>
                    </el-form-item>

                    <el-form-item label="展示缩略图" >
                        <el-upload class="image-uploader" name="upload_richText"
                                   :action="api.rootUrl+ 'upload/uploadRichText'" :show-file-list="false"
                                   :on-success="handleUploadImageSuccess" :headers="uploaderHeader">
                            <img v-if="infoForm.pic_url" :src="infoForm.pic_url" class="image-show">
                            <i v-else class="el-icon-plus image-uploader-icon"></i>
                        </el-upload>
                        <div class="form-tip">图片尺寸：24*24</div>
                    </el-form-item>
                    <el-form-item label="内容(如:大号商品)" prop="value">
                        <el-input v-model="infoForm.value"></el-input>
                    </el-form-item>
                    <el-form-item label="此规格商品数量" >
                        <el-input-number v-model="infoForm.goods_number" :min="1" :max="100000"></el-input-number>
                    </el-form-item>
                    <el-form-item label="此规格商品价格" >
                        <el-input-number v-model="infoForm.retail_price" :min="1" :max="100000"></el-input-number>
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
                options: [],
                infoForm: {
                    id: '',  //商品id
                    specification_id: '', // 分类id
                    value: '', //值
                    pic_url: '',
                    goods_number: 1, // 商品数量
                    retail_price: 1 // 商品真实价格
                },
                infoRules: {
                  value: [
                        { required: true,  message: '请输入内容', trigger: 'blur' },
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
                        this.axios.post('specification/goodsSpecAdd', this.infoForm).then((response) => {
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
                    this.infoForm.pic_url = res.data.fileUrl;
                }
            },

            getCatalog(){
                let that = this;
                this.axios.get('specification/index')
                .then((response) => {
                  console.log('分类信息',response);
                  this.options = response.data.data;
                })
            }
        },
        components: {},
        async mounted() {
            this.infoForm.id = this.$route.query.id || 0;
            await this.getCatalog();
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
