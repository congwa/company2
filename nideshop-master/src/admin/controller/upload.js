const Base = require('./base.js');
const fs = require('fs');
const fss = require('fs-extra');

module.exports = class extends Base {
  async brandPicAction() {
    const brandFile = this.file('brand_pic');
    if (think.isEmpty(brandFile)) {
      return this.fail('保存失败');
    }
    const that = this;
    const filename = '/static/upload/brand/' + think.uuid(32) + '.png';
    await fss.ensureDir(think.ROOT_PATH + '/www' + '/static/upload/brand'); // 确保目录真的存在
    const is = fs.createReadStream(brandFile.path);
    const os = fs.createWriteStream(think.ROOT_PATH + '/www' + filename);
    is.pipe(os);

    return that.success({
      name: 'brand_pic',
      fileUrl: think.config('upimg_url') + filename
    });
  }

  async brandNewPicAction() {
    const brandFile = this.file('brand_new_pic');
    if (think.isEmpty(brandFile)) {
      return this.fail('保存失败');
    }
    const that = this;
    const filename = '/static/upload/brand/' + think.uuid(32) + '.png';
    await fss.ensureDir(think.ROOT_PATH + '/www' + '/static/upload/brand'); // 确保目录真的存在

    const is = fs.createReadStream(brandFile.path);
    const os = fs.createWriteStream(think.ROOT_PATH + '/www' + filename);
    is.pipe(os);

    return that.success({
      name: 'brand_new_pic',
      fileUrl: think.config('upimg_url') + filename
    });
  }

  async categoryWapBannerPicAction() {
    const imageFile = this.file('wap_banner_pic');
    // console.log(imageFile);
    if (think.isEmpty(imageFile)) {
      return this.fail('保存失败');
    }
    const that = this;
    const filename = '/static/upload/category/' + think.uuid(32) + '.png';
    await fss.ensureDir(think.ROOT_PATH + '/www' + '/static/upload/category'); // 确保目录真的存在

    const is = fs.createReadStream(imageFile.path);
    // console.log('创建可读流',think.ROOT_PATH);
    const os = fs.createWriteStream(think.ROOT_PATH + '/www' + filename);
    // console.log('创建可写流',think.ROOT_PATH);
    is.pipe(os);

    return that.success({
      name: 'wap_banner_url',
      fileUrl: think.config('upimg_url') + filename
    });
  }

  async topicThumbAction() {
    const imageFile = this.file('scene_pic_url');
    if (think.isEmpty(imageFile)) {
      return this.fail('保存失败');
    }
    const that = this;
    const filename = '/static/upload/topic/' + think.uuid(32) + '.png';
    await fss.ensureDir(think.ROOT_PATH + '/www' + '/static/upload/topic'); // 确保目录真的存在

    const is = fs.createReadStream(imageFile.path);
    const os = fs.createWriteStream(think.ROOT_PATH + '/www' + filename);
    is.pipe(os);

    return that.success({
      name: 'scene_pic_url',
      fileUrl: think.config('upimg_url') + filename
    });
  }

  async bannerThumbAction() {
    const imageFile = this.file('image_url');
    if (think.isEmpty(imageFile)) {
      return this.fail('保存失败');
    }
    const that = this;
    const filename = '/static/upload/banner/' + think.uuid(32) + '.png';
    await fss.ensureDir(think.ROOT_PATH + '/www' + '/static/upload/banner'); // 确保目录真的存在

    const is = fs.createReadStream(imageFile.path);
    const os = fs.createWriteStream(think.ROOT_PATH + '/www' + filename);
    is.pipe(os);

    return that.success({
      name: 'image_url',
      fileUrl: think.config('upimg_url') + filename
    });
  }

  async channelThumbAction() {
    const imageFile = this.file('icon_url');
    if (think.isEmpty(imageFile)) {
      return this.fail('保存失败');
    }
    const that = this;
    const filename = '/static/upload/channel/' + think.uuid(32) + '.png';
    await fss.ensureDir(think.ROOT_PATH + '/www' + '/static/upload/channel'); // 确保目录真的存在

    const is = fs.createReadStream(imageFile.path);
    const os = fs.createWriteStream(think.ROOT_PATH + '/www' + filename);
    is.pipe(os);

    return that.success({
      name: 'icon_url',
      fileUrl: think.config('upimg_url') + filename
    });
  }

  async uploadVideoAction() {
    const file = this.file('upload_video');
    if (think.isEmpty(file)) {
      return this.fail('保存失败');
    }
    const that = this;
    const filename = '/static/upload/video/' + think.uuid(32) + '.flv';
    await fss.ensureDir(think.ROOT_PATH + '/www' + '/static/upload/video'); // 确保目录真的存在
    const is = fs.createReadStream(file.path);
    const os = fs.createWriteStream(think.ROOT_PATH + '/www' + filename);
    is.pipe(os);
    return that.success({
      name: 'upload_video',
      fileUrl: think.config('upimg_url') + filename
    });
  }

  /**
   * 富文本图片上传专用
   * @returns {Promise<void>}
   */
  async uploadRichTextAction() {
    const file = this.file('upload_richText');
    if (think.isEmpty(file)) {
      return this.fail('保存失败');
    }
    var that = this;

    const MD5Serivce = this.service('MD5', 'admin');
    const strMd5 = await MD5Serivce.readFileMd5(file.path);
    // console.log(strMd5);
    const data = await this.model('md5_url').where({md5: strMd5}).find();
    if (!think.isEmpty(data)) {
      return that.success({
        name: 'upload_richText',
        fileUrl: think.config('upimg_url') + data.url
      })
    }

    const filename = '/static/upload/richText/' + think.uuid(32) + '.png';

    await this.model('md5_url').add({md5: strMd5, url: filename})
    await fss.ensureDir(think.ROOT_PATH + '/www' + '/static/upload/richText'); // 确保目录真的存在
    const is = fs.createReadStream(file.path);
    const os = fs.createWriteStream(think.ROOT_PATH + '/www' + filename);
    is.pipe(os);
    return that.success({
      name: 'upload_richText',
      fileUrl: think.config('upimg_url') + filename
    });
  }
};
