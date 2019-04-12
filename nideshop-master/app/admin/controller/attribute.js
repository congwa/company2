function _asyncToGenerator(fn) { return function () { var gen = fn.apply(this, arguments); return new Promise(function (resolve, reject) { function step(key, arg) { try { var info = gen[key](arg); var value = info.value; } catch (error) { reject(error); return; } if (info.done) { resolve(value); } else { return Promise.resolve(value).then(function (value) { step("next", value); }, function (err) { step("throw", err); }); } } return step("next"); }); }; }

module.exports = class extends think.Controller {
  /**
   * 获取banner信息
   * @returns {Promise<void>}
   */
  indexAction() {
    var _this = this;

    return _asyncToGenerator(function* () {
      const attribute_category = yield _this.model('attribute_category').where().select();
      const data = yield _this.model('attribute').where().select();
      const categoryList = [];
      attribute_category.map(function (item) {
        item.level = 1;
        categoryList.push(item);
        data.map(function (child) {
          if (child.attribute_category_id === item.id) {
            child.level = 2;
            categoryList.push(child);
          }
        });
      });
      return _this.success(categoryList);
    })();
  }

  indexlistAction() {
    var _this2 = this;

    return _asyncToGenerator(function* () {
      const attribute_category = yield _this2.model('attribute_category').where().select();
      const data = yield _this2.model('attribute').where().select();
      const categoryList = [];
      attribute_category.map(function (item) {
        let obj = {};
        obj.label = item.name;
        obj.value = item.id;
        obj.children = [];
        data.map(function (child) {
          if (child.attribute_category_id === item.id) {
            let ob = {};
            ob.value = child.id;
            ob.label = child.name;
            obj.children.push(ob);
          }
        });
        categoryList.push(obj);
      });
      return _this2.success(categoryList);
    })();
  }

  /**
   `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
   `attribute_category_id` int(11) unsigned NOT NULL DEFAULT '0',
   `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
   `input_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
   `values` text COLLATE utf8mb4_unicode_ci NOT NULL,
   `sort_order` tinyint(3) unsig
   */
  addAction() {
    var _this3 = this;

    return _asyncToGenerator(function* () {
      if (!_this3.isPost) {
        return false;
      }
      const id = _this3.post('id');

      const model = _this3.model('attribute');

      let values = {
        attribute_category_id: _this3.post('attribute_category_id'),
        name: _this3.post('name'),
        input_type: 1,
        values: '',
        sort_order: 0
      };
      if (id > 0) {
        yield model.where({ id: id }).update(values);
      } else {
        delete values.id;
        yield model.add(values);
      }
      return _this3.success(values);
    })();
  }

  infoAction() {
    var _this4 = this;

    return _asyncToGenerator(function* () {
      const id = _this4.post('id') || _this4.get('id');

      const model = _this4.model('attribute');
      const data = yield model.where({ id: id }).find();
      return _this4.success(data);
    })();
  }

  infogoodsAction() {
    var _this5 = this;

    return _asyncToGenerator(function* () {
      const id = _this5.post('id') || _this5.get('id');

      const model = _this5.model('goods_attribute');
      const data = yield model.field('attribute_id,value').where({ goods_id: id }).select();
      return _this5.success(data);
    })();
  }

  /**
   * 删除一个attribute
   * @returns {Promise<void>}
   */
  deleteAction() {
    var _this6 = this;

    return _asyncToGenerator(function* () {
      const id = _this6.post('id');
      yield _this6.model('attribute').where({ id: id }).limit(1).delete();

      // TODO 事务，验证订单是否可删除（只有失效的订单才可以删除）

      return _this6.success();
    })();
  }
};
//# sourceMappingURL=attribute.js.map