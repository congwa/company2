function _asyncToGenerator(fn) { return function () { var gen = fn.apply(this, arguments); return new Promise(function (resolve, reject) { function step(key, arg) { try { var info = gen[key](arg); var value = info.value; } catch (error) { reject(error); return; } if (info.done) { resolve(value); } else { return Promise.resolve(value).then(function (value) { step("next", value); }, function (err) { step("throw", err); }); } } return step("next"); }); }; }

const Base = require('./base.js');
const fs = require('fs');
const fss = require('fs-extra');

module.exports = class extends Base {
  brandPicAction() {
    var _this = this;

    return _asyncToGenerator(function* () {
      const brandFile = _this.file('brand_pic');
      if (think.isEmpty(brandFile)) {
        return _this.fail('保存失败');
      }
      const that = _this;
      const filename = '/static/upload/brand/' + think.uuid(32) + '.jpg';
      yield fss.ensureDir(think.ROOT_PATH + '/www' + '/static/upload/brand'); //确保目录真的存在
      const is = fs.createReadStream(brandFile.path);
      const os = fs.createWriteStream(think.ROOT_PATH + '/www' + filename);
      is.pipe(os);

      return that.success({
        name: 'brand_pic',
        fileUrl: think.config('upimg_url') + filename
      });
    })();
  }

  brandNewPicAction() {
    var _this2 = this;

    return _asyncToGenerator(function* () {
      const brandFile = _this2.file('brand_new_pic');
      if (think.isEmpty(brandFile)) {
        return _this2.fail('保存失败');
      }
      const that = _this2;
      const filename = '/static/upload/brand/' + think.uuid(32) + '.jpg';
      yield fss.ensureDir(think.ROOT_PATH + '/www' + '/static/upload/brand'); //确保目录真的存在

      const is = fs.createReadStream(brandFile.path);
      const os = fs.createWriteStream(think.ROOT_PATH + '/www' + filename);
      is.pipe(os);

      return that.success({
        name: 'brand_new_pic',
        fileUrl: think.config('upimg_url') + filename
      });
    })();
  }

  categoryWapBannerPicAction() {
    var _this3 = this;

    return _asyncToGenerator(function* () {
      const imageFile = _this3.file('wap_banner_pic');
      // console.log(imageFile);
      if (think.isEmpty(imageFile)) {
        return _this3.fail('保存失败');
      }
      const that = _this3;
      const filename = '/static/upload/category/' + think.uuid(32) + '.jpg';
      yield fss.ensureDir(think.ROOT_PATH + '/www' + '/static/upload/category'); //确保目录真的存在

      const is = fs.createReadStream(imageFile.path);
      // console.log('创建可读流',think.ROOT_PATH);
      const os = fs.createWriteStream(think.ROOT_PATH + '/www' + filename);
      // console.log('创建可写流',think.ROOT_PATH);
      is.pipe(os);

      return that.success({
        name: 'wap_banner_url',
        fileUrl: think.config('upimg_url') + filename
      });
    })();
  }

  topicThumbAction() {
    var _this4 = this;

    return _asyncToGenerator(function* () {
      const imageFile = _this4.file('scene_pic_url');
      if (think.isEmpty(imageFile)) {
        return _this4.fail('保存失败');
      }
      const that = _this4;
      const filename = '/static/upload/topic/' + think.uuid(32) + '.jpg';
      yield fss.ensureDir(think.ROOT_PATH + '/www' + '/static/upload/topic'); //确保目录真的存在

      const is = fs.createReadStream(imageFile.path);
      const os = fs.createWriteStream(think.ROOT_PATH + '/www' + filename);
      is.pipe(os);

      return that.success({
        name: 'scene_pic_url',
        fileUrl: think.config('upimg_url') + filename
      });
    })();
  }

  bannerThumbAction() {
    var _this5 = this;

    return _asyncToGenerator(function* () {
      const imageFile = _this5.file('image_url');
      if (think.isEmpty(imageFile)) {
        return _this5.fail('保存失败');
      }
      const that = _this5;
      const filename = '/static/upload/banner/' + think.uuid(32) + '.jpg';
      yield fss.ensureDir(think.ROOT_PATH + '/www' + '/static/upload/banner'); //确保目录真的存在

      const is = fs.createReadStream(imageFile.path);
      const os = fs.createWriteStream(think.ROOT_PATH + '/www' + filename);
      is.pipe(os);

      return that.success({
        name: 'image_url',
        fileUrl: think.config('upimg_url') + filename
      });
    })();
  }

  channelThumbAction() {
    var _this6 = this;

    return _asyncToGenerator(function* () {
      const imageFile = _this6.file('icon_url');
      if (think.isEmpty(imageFile)) {
        return _this6.fail('保存失败');
      }
      const that = _this6;
      const filename = '/static/upload/channel/' + think.uuid(32) + '.jpg';
      yield fss.ensureDir(think.ROOT_PATH + '/www' + '/static/upload/channel'); //确保目录真的存在

      const is = fs.createReadStream(imageFile.path);
      const os = fs.createWriteStream(think.ROOT_PATH + '/www' + filename);
      is.pipe(os);

      return that.success({
        name: 'icon_url',
        fileUrl: think.config('upimg_url') + filename
      });
    })();
  }

  uploadVideoAction() {
    var _this7 = this;

    return _asyncToGenerator(function* () {
      const file = _this7.file('upload_video');
      if (think.isEmpty(file)) {
        return _this7.fail('保存失败');
      }
      const that = _this7;
      const filename = '/static/upload/video/' + think.uuid(32) + '.flv';
      console.log(filename);
      yield fss.ensureDir(think.ROOT_PATH + '/www' + '/static/upload/video'); //确保目录真的存在
      const is = fs.createReadStream(file.path);
      const os = fs.createWriteStream(think.ROOT_PATH + '/www' + filename);
      is.pipe(os);
      return that.success({
        name: 'upload_video',
        fileUrl: think.config('upimg_url') + filename
      });
    })();
  }

  /**
   * 富文本图片上传专用
   * @returns {Promise<void>}
   */
  uploadRichTextAction() {
    var _this8 = this;

    return _asyncToGenerator(function* () {
      const file = _this8.file('upload_richText');
      if (think.isEmpty(file)) {
        return _this8.fail('保存失败');
      }
      const that = _this8;
      const filename = '/static/upload/richText/' + think.uuid(32) + '.png';
      yield fss.ensureDir(think.ROOT_PATH + '/www' + '/static/upload/richText'); //确保目录真的存在
      const is = fs.createReadStream(file.path);
      const os = fs.createWriteStream(think.ROOT_PATH + '/www' + filename);
      is.pipe(os);
      return that.success({
        name: 'upload_video',
        fileUrl: think.config('upimg_url') + filename
      });
    })();
  }
};
//# sourceMappingURL=upload.js.map