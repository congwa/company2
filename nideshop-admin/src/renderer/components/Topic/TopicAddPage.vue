<template>
    <div class="content-page">
        <div class="content-nav">
            <el-breadcrumb class="breadcrumb" separator="/">
                <el-breadcrumb-item :to="{ name: 'dashboard' }">首页</el-breadcrumb-item>
                <el-breadcrumb-item>商城运营</el-breadcrumb-item>
                <el-breadcrumb-item>{{infoForm.id ? '编辑专题' : '添加专题'}}</el-breadcrumb-item>
            </el-breadcrumb>
            <div class="operation-nav">
                <el-button type="primary" @click="goBackPage" icon="arrow-left">返回列表</el-button>
            </div>
        </div>
        <div class="content-main">
            <div class="form-table-box">
                <el-form ref="infoForm" :rules="infoRules" :model="infoForm" label-width="120px">
                    <el-form-item label="标题" prop="title">
                        <el-input v-model="infoForm.title"></el-input>
                    </el-form-item>
                    <el-form-item label="子标题" prop="subtitle">
                        <el-input type="textarea" v-model="infoForm.subtitle" :rows="3"></el-input>
                        <div class="form-tip"></div>
                    </el-form-item>
                    <el-form-item label="缩略图" prop="scene_pic_url">
                        <el-upload class="image-uploader" name="scene_pic_url"
                                   :action="api.rootUrl + '/upload/topicThumb'" :show-file-list="false"
                                   :on-success="handleUploadImageSuccess" :headers="uploaderHeader">
                            <img v-if="infoForm.scene_pic_url" :src="infoForm.scene_pic_url" class="image-show">
                            <i v-else class="el-icon-plus image-uploader-icon"></i>
                        </el-upload>
                        <div class="form-tip">图片尺寸：750*415</div>
                    </el-form-item>
                    <el-form-item label="专题详情" prop="content">
                      <quill-editor ref="myQuillEditor"
                          v-model="infoForm.content"
                          :style="{width:388}"
                          @blur="onEditorBlur($event)"
                          @change="onEditorChange($event)"
                          @focus="onEditorFocus($event)"
                          @ready="onEditorReady($event)">
                      </quill-editor>
                      <el-upload class="upload-demo" name="upload_richText" :action="api.rootUrl + '/upload/uploadRichText'" :before-upload='beforeUpload'  :on-success='upScuccess'
                         :headers="uploaderHeader"
                         ref="upload" style="display:none">
                         <el-button size="small" type="primary" id="imgInput" v-loading.fullscreen.lock="fullscreenLoading" element-loading-text="插入中,请稍候">点击上传</el-button>
                      </el-upload>
                    </el-form-item>
                    <el-form-item label="排序">
                        <el-input-number v-model="infoForm.sort_order" :min="1" :max="1000"></el-input-number>
                    </el-form-item>
                    <el-form-item label="启用">
                        <el-switch v-model="infoForm.is_show"></el-switch>
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
    import * as Quill from 'quill'   
    export default {
        data() {
            return {
                fullscreenLoading: false,
                api:api,
                uploaderHeader: {
                    'X-Nideshop-Token': localStorage.getItem('token') || '',
                },
                infoForm: {
                    id: 0,
                    title: "",
                    subtitle: '',
                    sort_order: 100,
                    is_show: true,
                    scene_pic_url: '',
                    content:''
                },
                infoRules: {
                  title: [
                        { required: true, message: '请输入标题', trigger: 'blur' },
                    ],
                  subtitle: [
                        { required: true, message: '请输入子标题', trigger: 'blur' },
                    ],
                  scene_pic_url: [
                        { required: true, message: '请选择缩略图', trigger: 'blur' },
                    ],
                },
            }
        },
        methods: {
            onEditorBlur(editor) {
            console.log('editor blur!', editor)
            },
            onEditorFocus(editor) {
              console.log('editor focus!', editor)
            },
            onEditorReady(editor) {
              console.log('editor ready!', editor)
            },
            onEditorChange({ editor, html, text }) {
              // console.log('editor change!', editor, html, text)
              this.infoForm.content = html;
              console.log('专题详情',html);
            },
            goBackPage() {
                this.$router.go(-1);
            },
            onSubmitInfo() {
                this.$refs['infoForm'].validate((valid) => {
                    if (valid) {
                        this.axios.post('topic/store', this.infoForm).then((response) => {
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
                        case 'scene_pic_url':
                          this.infoForm.scene_pic_url = res.data.fileUrl;
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
                this.axios.get('topic/info', {
                    params: {
                        id: that.infoForm.id
                    }
                }).then((response) => {
                    let resInfo = response.data.data;
                    resInfo.is_show = resInfo.is_show ? true : false;
                    that.infoForm = resInfo;
                })
            },

                      // 图片上传之前调取的函数
            beforeUpload(file) {
              this.fullscreenLoading = true;
            },

            // 图片上传成功回调   插入到编辑器中
            upScuccess(res, file, fileList) {
              this.fullscreenLoading = false;
              let vm = this
              let url = ''
              if (this.uploadType === 'image') {    // 获得文件上传后的URL地址
                url = res.data.fileUrl;
              } else if (this.uploadType === 'video') {
                url = res.data.fileUrl;
              }
              console.log(url);
              if (url != null && url.length > 0) {  // 将文件上传后的URL地址插入到编辑器文本中
                let value = url
                vm.addRange = vm.$refs.myQuillEditor.quill.getSelection()
                value = value.indexOf('http') !== -1 ? value : 'http:' + value
                vm.$refs.myQuillEditor.quill.insertEmbed(vm.addRange !== null ? vm.addRange.index : 0, vm.uploadType, value, Quill.sources.USER)   // 调用编辑器的 insertEmbed 方法，插入URL
                console.log('插入成功');
              } else {
                this.$message.error(`${vm.uploadType}插入失败`)
              }
              this.$refs['upload'].clearFiles()    // 插入成功后清除input的内容
            },
                        // 点击图片ICON触发事件
            imgHandler(state) {
               this.addRange = this.$refs.myQuillEditor.quill.getSelection()
               if (state) {
                 let fileInput = document.getElementById('imgInput')
                 fileInput.click() // 加一个触发事件
               }
               this.uploadType = 'image'
            },
            // 点击视频ICON触发事件
           videoHandler(state) {
             this.addRange = this.$refs.myQuillEditor.quill.getSelection()
             if (state) {
               let fileInput = document.getElementById('imgInput')
               fileInput.click() // 加一个触发事件
             }
             this.uploadType = 'video'
           }
        },
        components: {},
        mounted() {
            this.infoForm.id = this.$route.query.id || 0;
            this.getInfo();
            console.log(api);
            this.$refs.myQuillEditor.quill.getModule('toolbar').addHandler('image', this.imgHandler)
            this.$refs.myQuillEditor.quill.getModule('toolbar').addHandler('video', this.videoHandler)  // 为视频ICON绑定事件
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
