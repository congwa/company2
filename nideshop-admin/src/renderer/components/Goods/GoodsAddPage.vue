<template>
  <div class="content-page">
    <div class="content-nav">
      <el-breadcrumb class="breadcrumb" separator="/">
        <el-breadcrumb-item :to="{ name: 'dashboard' }">首页</el-breadcrumb-item>
        <el-breadcrumb-item>商品管理</el-breadcrumb-item>
        <el-breadcrumb-item>{{infoForm.id ? '编辑商品' : '添加商品'}}</el-breadcrumb-item>
      </el-breadcrumb>
      <div class="operation-nav">
        <el-button type="primary" @click="goBackPage" icon="arrow-left">返回列表</el-button>
      </div>
    </div>
    <div class="content-main">
      <div class="form-table-box">

        <el-form ref="infoForm" :rules="infoRules" :model="infoForm" label-width="120px">


          <el-form-item label="所属分类" prop="category_id">
            <el-select :options="options" placeholder="请选择分类" v-model="infoForm.category_id">
              <el-option
                v-for="item in options"
                :key="item.id"
                :label="item.name"
                :value="item.id">
              </el-option>
            </el-select>
          </el-form-item>

          <el-form-item label="商品名称" prop="name">
            <el-input v-model="infoForm.name"></el-input>
          </el-form-item>

          <el-form-item label="零售价格" prop="retail_price">
            <el-input v-model="infoForm.retail_price" min="0" max="1000000" step="0.01" type="number"></el-input>
          </el-form-item>

          <el-form-item label="商品关键词(用于搜寻用)" prop="keywords">
            <el-input v-model="infoForm.keywords"></el-input>
          </el-form-item>



          <el-form-item label="商品简介" prop="goods_brief">
            <el-input type="textarea" v-model="infoForm.goods_brief" :rows="3"></el-input>
            <div class="form-tip"></div>
          </el-form-item>


          <el-form-item label="商品详情" prop="goods_desc">
            <quill-editor ref="myQuillEditor"
                v-model="infoForm.goods_desc"
                :config="editorOption"
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

          <el-form-item label="商品主图" prop="primary_pic_url">
            <el-upload
              class="image-uploader" name="brand_pic"
              :action="api.rootUrl + '/upload/brandPic'"
              :show-file-list="false"
              :on-success="handlePicUrlSuccess"
              :headers="uploaderHeader">
              <img v-if="infoForm.primary_pic_url " :src="infoForm.primary_pic_url " class="image-show">
              <i v-else class="el-icon-plus image-uploader-icon"></i>
            </el-upload>
            <div class="form-tip">图片尺寸：128*128或800*800（正方形）</div>
          </el-form-item>


          <el-form-item label="商品列表图" prop="list_pic_url">
            <el-upload
              class="image-uploader" name="brand_pic"
              :action="api.rootUrl+ '/upload/brandPic'"
              :show-file-list="false"
              :on-success="handleUploadImageSuccess"
              :headers="uploaderHeader">
              <img v-if="infoForm.list_pic_url" :src="infoForm.list_pic_url" class="image-show">
              <i v-else class="el-icon-plus image-uploader-icon"></i>
            </el-upload>
            <div class="form-tip">图片尺寸：750*420</div>
          </el-form-item>

          <el-form-item label="商品详情列表图" prop="gallery">
            <el-upload
              :action="api.rootUrl+ '/upload/brandPic'"
              name="brand_pic"
              list-type="picture-card"
              :on-preview="handlePictureCardPreview"
              :on-remove="handleRemove"
              :fileList="fileList"
              :headers="uploaderHeader"
              :on-success="handleCardPreviewSuccess">
              <i class="el-icon-plus"></i>
            </el-upload>
            <el-dialog :visible.sync="dialogVisible">
              <img width="100%" :src="dialogImageUrl" alt="">
            </el-dialog>
              <div class="form-tip">图片尺寸：800*800（正方形）</div>
          </el-form-item>

          <el-form-item label="商品详情商品属性" prop="attribute">
            <div class="attributeList" v-for="(item,index) in attributeList">
              <el-cascader
                v-model="item['attribute_id']"
                :options="attributeDesc"
                :show-all-levels="false"
                @change="attributeSelect($event,index)">
              </el-cascader>
              <el-input v-model="item['value']"   type="textarea" autosize placeholder="请输入此属性内容"  @change="attributeChange($event,index)"  class="input-with-select">
              </el-input>
              <el-button @click="deleteAttribute(index)">删除</el-button>
            </div>
            <el-button @click="addAttribute">添加一个新的属性</el-button>
          </el-form-item>


          <el-form-item label="商品视频" prop="desc_video_url" >
            <el-upload class="el_video" name="upload_video" drag accept=".flv"
                       :action="api.rootUrl + '/upload/uploadVideo'"
                       :before-upload="beforeUploadVideo"
                       :on-success="handleUploadVideoSuccess" :headers="uploaderHeader">
              <div v-if="!infoForm.desc_video_url" class="el-upload__text">将文件拖到此处，或<em>点击上传</em></div>
              <video  v-if="infoForm.desc_video_url" :src="infoForm.desc_video_url" id="videoPlay" controls="controls" autoplay="autoplay" style="{width:100%,display:block}" class="video">您的浏览器不支持 video 视屏播放。</video>
              <i v-else class="el-icon-plus image-uploader-icon"></i>
            </el-upload>
            <div class="form-tip">支持格式：flv</div>
          </el-form-item>

          <!-- <el-form-item label="规格/库存" prop="simple_d"> </el-form-item> -->

          <el-form-item label="是否是热门产品">
              <el-switch v-model="infoForm.is_hot"></el-switch>
          </el-form-item>


          <el-form-item label="是否是首发产品">
            <el-switch v-model="infoForm.is_new"> </el-switch>
          </el-form-item>

          <el-form-item label="是否下架(不显示)">
              <el-switch v-model="infoForm.is_delete"> </el-switch>
              <div>商品默认为显示的</div>
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
        fullscreenLoading: false,
        api:api,
        dialogImageUrl: '',
        dialogVisible: false,
        fileList:[],

        attributeList:[],
        attributeDesc:[],

        infoForm: {
          id: 0,              // 商品id
          name: "",           // 商品名字
          retail_price:0,
          category_id:'', // 商品分类选项
          keywords: '',   // 商品关键词 用于搜寻

          goods_brief: '',   // 商品简介

          goods_desc: '',  // 商品详情

          primary_pic_url: '',  // 商品主图 1个
          list_pic_url: '',   // 商品列表图 1个
          // promotion_tag: '',  // 推荐类型

          sort_order: 100,   //排序
          // is_show: true,     //是否显示
          gallery:[],
          // floor_price: 0,
          // app_list_pic_url: '',
          is_new: false,    // 是否新的
          is_hot: false,    // 是否热门产品
          is_delete: false, //是否立即展示
          // new_pic_url: "",
          // new_sort_order: 10,
          desc_video_url: '',   // 视频为非必填选项
          attribute:[]
        },
        editorOption: {
          // something config
        },
        options:[],


        uploaderHeader: {
          'X-Nideshop-Token': localStorage.getItem('token') || '',
        },

        infoRules: {
          name: [
            { required: true, message: '请输入名称', trigger: 'blur' },

          ],
          retail_price: [
            { required: true, type:'number' ,type:'string',message: '请输入零售价格', trigger: 'blur' },

          ],

          gallery: [
            { required: true, type:'array', message: '请上传展示页列表图', trigger: 'blur' },
          ],


          keywords: [
            { required: true, message: '请输入关键词', trigger: 'blur' },
          ],


          goods_desc: [
            { required: true, message: '请输入详情', trigger: 'blur' },
          ],

          primary_pic_url: [
             { required: true, message: '请上传商品主图', trigger: 'blur' },
          ],

          // sort_order: [
          //   { required: true, message: '请输入排序', trigger: 'blur' },
          // ],

          goods_brief: [
            { required: true, message: '请输入简介', trigger: 'blur' },
          ],
          list_pic_url: [
            // { required: true, message: '请选择商品列表图片', trigger: 'blur' },
          ],
          category_id: [
             {type: 'number', required: true, message: '请选择商品分类', trigger: 'blur' },
          ]
        },
      }
    },

    methods: {
      addAttribute() {
        this.attributeList.push({attribute_id:['',''],value:''});
      },

      attributeChange(value,index) {
        console.log(value,index);
        if( !this.infoForm.attribute || !this.infoForm.attribute[index]){
          return;
        }
        this.infoForm.attribute[index]? '':(this.infoForm.attribute[index]={attribute_id:'',value:''})
        this.infoForm.attribute[index]['value'] = value;
        this.attributeList[index]['value'] = value;
      },

      attributeSelect(value,index) {
        console.log(value,index);
        if(index == undefined || value === ''){
          console.log('fail');
          return;
        }
        console.log(this.infoForm.attribute);
        this.infoForm.attribute[index]? '':(this.infoForm.attribute[index]={attribute_id:'',value:''})
        this.infoForm.attribute[index]['attribute_id'] = value[1];
        this.attributeList[index]['attribute_id'] = value;
      },

      deleteAttribute(index) {
        this.attributeList[index] && this.attributeList.splice(index,1);
        this.infoForm.attribute[index] && this.infoForm.attribute.splice(index,1);
      },

      handleRemove(file, fileList) {
         console.log('-------',this.infoForm.gallery);
         let url = file.url || file.response.data.fileUrl ;
         let tag = this.infoForm.gallery.indexOf(url);
         if(tag != -1){
           this.infoForm.gallery.splice(tag,1);
         }
         console.log('删除',this.infoForm.gallery);
      },

      handlePictureCardPreview(file) {
         console.log(this.dialogImageUrl);
         this.dialogImageUrl = file.url;
         this.dialogVisible = true;
      },

      handleCardPreviewSuccess(res , file){
        // alert('-------',this.infoForm);
        this.infoForm.gallery.push(res.data.fileUrl);

      },

      goBackPage() {
        this.$router.go(-1);
      },
      //
      //
      //
      //现阶段可用参数  category_id  name  keywords  goods_brief  goods_desc sort_order  is_new primary_pic_url（商品主图） list_pic_url（商品列表图） is_hot  desc_video_url
      onSubmitInfo() {
        console.log('要保存的商品详情列表图',this.infoForm.gallery);
        if(this.infoForm.gallery && this.infoForm.gallery.length>0){
          this.infoForm.gallery = this.infoForm.gallery.filter(item => item);
        }
        if(!this.infoForm.gallery){
          alert('如果*详情列表图*已经上传并显示,发生数据错误,请刷新重填');
        }
        if(!this.infoForm.attribute){
          alert('如果*商品属性*已经上传并显示,发生数据错误,请刷新重填');
        }
        this.$refs['infoForm'].validate((valid) => {
          if (valid) {
            this.axios.post('goods/store', this.infoForm).then((response) => {
              if (response.data.errno === 0) {
                this.$message({
                  type: 'success',
                  message: '保存成功'
                });
                this.$router.go(-1)
              } else {
                this.$message({
                  type: 'error',
                  message: '保存失败,刷新流量器重试'
                })
              }
            }).catch(err => {
              alert('保存失败,刷新流量器重试');
            })
          } else {
            return false;
          }
        });
      },

      // handleChange(value){
      //   console.log(value);
      //   this.infoForm.category_id = value;
      // },

      /**
       * 商品列表图上传
       * @param  {[type]} res  [description]
       * @param  {[type]} file [description]
       * @return {[type]}      [description]
       */
      handleUploadImageSuccess(res, file) {
        if (res.errno === 0) {
          // switch (res.data.name) {
          //   //商品图片
          //   case 'brand_pic':

          //     this.$set('infoForm.list_pic_url', res.data.fileUrl);
          //     break;
          //   case 'brand_new_pic':
          //     this.$set('infoForm.new_pic_url', res.data.fileUrl);
          //     break;
          // }
          this.infoForm.list_pic_url = res.data.fileUrl;
        }
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
      },

      /**
       * 商品主图上传成功
       * @param  {[type]} res  [description]
       * @param  {[type]} file [description]
       * @return {[type]}      [description]
       */
      handlePicUrlSuccess(res,file){
        if(res.errno === 0 ){
          this.infoForm.primary_pic_url = res.data.fileUrl;
        }
      },

      /**
       * 视频上传检测
       * @param  {[type]} file [description]
       * @return {[type]}      [description]
       */
      beforeUploadVideo(file) {
          if (['video/mp4', 'video/ogg', 'video/flv','video/avi','video/wmv','video/rmvb','video/x-flv'].indexOf(file.type) == -1) {
              this.$message.error('请上传正确的视频格式');
              return false;
          }
      },
      /**
       * 视频上传成功
       * @param  {[type]} res  [description]
       * @param  {[type]} file [description]
       * @return {[type]}      [description]
       */
      handleUploadVideoSuccess(res, file) {
        if(res.errno === 0 ) {
          this.infoForm.desc_video_url = res.data.fileUrl;
        }
        console.log('视频上传成功',file);
      },

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
        this.infoForm.goods_desc = html;
        console.log('商品详情',html);
      },

      /**
       * 获取详情
       * @return {[type]} [description]
       */
      getInfo() {
        if (this.infoForm.id <= 0) {
          return false
        }

        //加载商品详情
        let that = this
        return this.axios.get('goods/info', {
          params: {
            id: that.infoForm.id
          }
        }).then((response) => {
          console.log('商品详情',response);
          let resInfo = response.data.data;
          resInfo.is_new = resInfo.is_new ? true : false;
          resInfo.is_show = resInfo.is_show ? true : false;
          resInfo.is_delete = resInfo.is_delete? true : false;
          resInfo.retail_price = resInfo.retail_price.toString();
          that.infoForm = resInfo;
        })
      },
      getCatalog(){
        let that = this;
        this.axios.get('category/second')
        .then((response) => {
          console.log('分类信息',response);
          this.options = response.data.data;
        })
      },
      getAttributeDesc() {


        //加载商品详情
        let that = this;
        this.axios.get('attribute/indexlist').then((response) => {
          console.log('商品详情',response);
          let resInfo = response.data.data;
          that.attributeDesc = resInfo;
        })
      },

      getGoodsAttribute() {
        let that = this;
        this.axios.post('goods/infogoods',{id:this.infoForm.id}).then((response) => {
          console.log('商品属性',response);
          let resInfo = response.data.data;


          let res =[];
          resInfo.map(item => {
            let a = [];
            a.push(item.attribute_category_id);
            a.push(item.attribute_id);
            let b ={};
            b.attribute_id = a;
            b.value = item.value;
            res.push(b);
          })
          that.attributeList = res;

          let info = [];
          resInfo.map(item => {
            let assign = Object.assign({},item);
            console.log('22222222222',assign);
            delete assign.attribute_category_id;
            info.push(assign);
          })
          that.infoForm.attribute = info;
          // console.log('111111',info);
        })
      },

      getGalleryList() {
        var that = this;
        this.axios.post('goods/galleryinfo',{id:this.infoForm.id}).then((response) => {

          let resInfo = response.data.data;

          let gallery = [];
          let fileList = [];
          resInfo.map( item => {
             fileList.push({url:item.img_url});
             gallery.push(item.img_url);
          })
          that.infoForm.gallery = gallery;
          that.fileList = fileList;
          console.log('轮播图属性',gallery,that.infoForm);

        })
      }
    },
    components: {},
    async mounted() {
      this.$refs.myQuillEditor.quill.getModule('toolbar').addHandler('image', this.imgHandler)
      this.$refs.myQuillEditor.quill.getModule('toolbar').addHandler('video', this.videoHandler)  // 为视频ICON绑定事件
      this.infoForm.id = this.$route.query.id || 0;
      console.log('id',this.infoForm.id);
      await this.getInfo();
      this.getCatalog();
      this.getAttributeDesc();
      this.getGoodsAttribute();
      this.getGalleryList();
      console.log(api)
    },
    watch: {
      infoForm(n,o){
        if(!n.gallery){
          console.log('gallery low');
        }
      }
    }
  }

</script>

<style>
.quill-editor{
  width: 388px;
}
  .ql-editor .ql-indent-1:not(.ql-direction-rtl){
    padding-left: 0px !important;
  }
  .el_video .el-upload-dragger{
      width: auto !important;
      height: auto !important;

  }
 .el-form-item{
    overflow: visible;
  }
  .image-uploader{

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
    .avatar-uploader .el-upload {
    border: 1px dashed #d9d9d9;
    border-radius: 6px;
    cursor: pointer;
    position: relative;
    overflow: hidden;
  }
  .avatar-uploader .el-upload:hover {
    border-color: #409EFF;
  }
  .avatar-uploader-icon {
    font-size: 28px;
    color: #8c939d;
    width: 178px;
    height: 178px;
    line-height: 178px;
    text-align: center;
  }
  .avatar {
    width: 178px;
    height: 178px;
    display: block;
  }

  .el-select .el-input {
     width: 400px;
   }
   .input-with-select .el-input-group__prepend {
     background-color: #fff;
   }
   .attributeList{
     display: flex;;
     justify-content: flex-start;
     align-items: center;
   }
</style>
