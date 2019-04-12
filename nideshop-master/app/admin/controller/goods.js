function _asyncToGenerator(fn) { return function () { var gen = fn.apply(this, arguments); return new Promise(function (resolve, reject) { function step(key, arg) { try { var info = gen[key](arg); var value = info.value; } catch (error) { reject(error); return; } if (info.done) { resolve(value); } else { return Promise.resolve(value).then(function (value) { step("next", value); }, function (err) { step("throw", err); }); } } return step("next"); }); }; }

const Base = require('./base.js');

module.exports = class extends Base {
  /**
   * index action
   * @return {Promise} []
   */
  indexAction() {
    var _this = this;

    return _asyncToGenerator(function* () {
      const page = _this.get('page') || 1;
      const size = _this.get('size') || 10;
      const name = _this.get('name') || '';

      const model = _this.model('goods');
      const data = yield model.where({ name: ['like', `%${name}%`] }).order(['id DESC']).page(page, size).countSelect();

      return _this.success(data);
    })();
  }

  infoAction() {
    var _this2 = this;

    return _asyncToGenerator(function* () {
      const id = _this2.get('id');
      const model = _this2.model('goods');
      const data = yield model.where({ id: id }).find();

      return _this2.success(data);
    })();
  }

  storeAction() {
    var _this3 = this;

    return _asyncToGenerator(function* () {
      if (!_this3.isPost) {
        return false;
      }

      const values = _this3.post();
      const id = _this3.post('id');
      const model = _this3.model('goods');
      const galleryModel = _this3.model('goods_gallery').db(model.db());
      const attributeModel = _this3.model('goods_attribute').db(model.db());
      try {
        //添加goods表

        yield model.startTrans();
        values.is_on_sale = values.is_on_sale ? 1 : 0;
        values.is_new = values.is_new ? 1 : 0;
        values.is_hot = values.is_hot ? 1 : 0;
        values.is_delete = values.is_delete ? 1 : 0; // 0代表上架  1代表下架
        var v;
        if (id > 0) {
          // console.log('***************1');
          yield model.where({ id: id }).update(values);
          // console.log('***************71');
        } else {
          delete values.id;
          // console.log('***************72');
          v = yield model.add(values);
          id = v;
        }
        // console.log('-------------------------',id);
        //添加goods_gallery
        const gallery_list = values['gallery'];

        if (gallery_list && gallery_list.length > 0) {
          // console.log('***************73');
          yield galleryModel.where({ goods_id: id }).delete();
          const list = gallery_list.map(function (url, index) {
            return { img_url: url, goods_id: id, img_desc: '', sort_order: index };
          });

          yield galleryModel.addMany(list);
        }

        //添加商品属性
        const goods_attribute = values['attribute'];

        if (goods_attribute && goods_attribute.length > 0) {
          // console.log('***************74');
          yield attributeModel.where({ goods_id: id }).delete();
          const a_list = goods_attribute.map(function (item) {
            item.goods_id = id;
            return item;
          });
          yield attributeModel.addMany(a_list);
        }
        console.log('***************7');
        yield model.commit();
        return _this3.success(values);
      } catch (e) {
        console.log('***************', e);

        yield model.rollback();
        return _this3.fail(1002, e);
      }
    })();
  }

  destoryAction() {
    var _this4 = this;

    return _asyncToGenerator(function* () {
      const id = _this4.post('id');
      yield _this4.model('goods').where({ id: id }).limit(1).delete();
      // TODO 删除图片

      return _this4.success();
    })();
  }

  infogoodsAction() {
    var _this5 = this;

    return _asyncToGenerator(function* () {
      const id = _this5.post('id') || _this5.get('id');

      const model = _this5.model('goods_attribute');
      const data = yield model.field('attribute_id,value,attribute_category_id').where({ goods_id: id }).join('nideshop_attribute ON nideshop_attribute.id=nideshop_goods_attribute.attribute_id').select();
      return _this5.success(data);
    })();
  }

  galleryinfoAction() {
    var _this6 = this;

    return _asyncToGenerator(function* () {
      const id = _this6.post('id');
      const data = yield _this6.model('goods_gallery').field('img_url').where({ goods_id: id }).select();
      // TODO 删除图片

      return _this6.success(data);
    })();
  }
};
//# sourceMappingURL=goods.js.map