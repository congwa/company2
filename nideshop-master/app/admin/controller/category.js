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
      const model = _this.model('category');
      const data = yield model.where().order(['sort_order ASC']).select();
      const topCategory = data.filter(function (item) {
        return item.parent_id === 0;
      });
      const categoryList = [];
      topCategory.map(function (item) {
        item.level = 1;
        categoryList.push(item);
        data.map(function (child) {
          if (child.parent_id === item.id) {
            child.level = 2;
            categoryList.push(child);
          }
        });
      });
      return _this.success(categoryList);
    })();
  }

  /**
   * 选出所有的二级分类
   * @returns {Promise<void>}
   */
  secondAction() {
    var _this2 = this;

    return _asyncToGenerator(function* () {
      const model = _this2.model('category');
      const data = yield model.where({ is_show: 1 }).order(['sort_order ASC']).select();
      const second = data.filter(function (item) {
        return item.parent_id != 0;
      });
      return _this2.success(second);
    })();
  }

  /**
   * 选出所有的一级分类
   * @returns {Promise<*|never>}
   */
  topCategoryAction() {
    var _this3 = this;

    return _asyncToGenerator(function* () {
      const model = _this3.model('category');
      const data = yield model.where({ parent_id: 0 }).order(['id ASC']).select();

      return _this3.success(data);
    })();
  }

  infoAction() {
    var _this4 = this;

    return _asyncToGenerator(function* () {
      const id = _this4.get('id');
      const model = _this4.model('category');
      const data = yield model.where({ id: id }).find();

      return _this4.success(data);
    })();
  }

  /**
   * 保存分类
   * @returns {Promise<*>}
   */
  storeAction() {
    var _this5 = this;

    return _asyncToGenerator(function* () {
      if (!_this5.isPost) {
        return false;
      }

      const values = _this5.post();
      const id = _this5.post('id');

      const model = _this5.model('category');
      values.is_show = values.is_show ? 1 : 0;

      let datas = {};
      datas.id = values.id ? values.id : 0;
      datas.name = values.name ? values.name : '';
      datas.keywords = values.keywords ? values.keywords : '';
      datas.front_desc = values.front_desc ? values.front_desc : '';
      datas.parent_id = values.parent_id ? values.parent_id : 0;
      datas.sort_order = values.sort_order ? values.sort_order : 0;
      datas.show_index = values.show_index ? values.show_index : 0;
      datas.is_show = values.is_show ? values.is_show : 0;
      datas.banner_url = values.banner_url ? values.banner_url : '';
      datas.icon_url = values.icon_url ? values.icon_url : '';
      datas.img_url = values.img_url ? values.img_url : '';
      datas.wap_banner_url = values.wap_banner_url ? values.wap_banner_url : '';
      datas.level = values.level ? values.level : '';
      datas.type = values.type ? values.type : 0;
      datas.front_name = values.front_name ? values.front_name : '';

      if (id > 0) {
        yield model.where({ id: id }).update(datas);
      } else {
        delete datas.id;
        yield model.add(datas);
      }
      return _this5.success(datas);
    })();
  }

  destoryAction() {
    var _this6 = this;

    return _asyncToGenerator(function* () {
      const id = _this6.post('id');
      yield _this6.model('category').where({ id: id }).limit(1).delete();
      // TODO 删除图片

      return _this6.success();
    })();
  }
};
//# sourceMappingURL=category.js.map