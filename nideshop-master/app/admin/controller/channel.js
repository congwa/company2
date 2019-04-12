function _asyncToGenerator(fn) { return function () { var gen = fn.apply(this, arguments); return new Promise(function (resolve, reject) { function step(key, arg) { try { var info = gen[key](arg); var value = info.value; } catch (error) { reject(error); return; } if (info.done) { resolve(value); } else { return Promise.resolve(value).then(function (value) { step("next", value); }, function (err) { step("throw", err); }); } } return step("next"); }); }; }

module.exports = class extends think.Controller {
  /**
   * 获取banner信息
   * @returns {Promise<void>}
   */
  indexAction() {
    var _this = this;

    return _asyncToGenerator(function* () {
      const channel = yield _this.model('channel').order({ sort_order: 'asc' }).select();
      return _this.success(channel);
    })();
  }

  /**
   * CREATE TABLE `nideshop_channel` (
   `id` int(11) NOT NULL AUTO_INCREMENT,
   `name` varchar(45) NOT NULL DEFAULT '',
   `url` varchar(255) NOT NULL DEFAULT '',
   `icon_url` varchar(255) NOT NULL DEFAULT '',
   `sort_order` int(4) unsigned NOT NULL DEFAULT '10',
   PRIMARY KEY (`id`)
   ) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='分类信息\n';
   * @returns {Promise<*>}
   */

  addAction() {
    var _this2 = this;

    return _asyncToGenerator(function* () {
      if (!_this2.isPost) {
        return false;
      }
      const id = _this2.post('id');

      const model = _this2.model('channel');

      let values = {
        id: _this2.post('id'),
        name: _this2.post('name'),
        url: '/pages/category/category?id=' + _this2.post('category_id'),
        icon_url: _this2.post('icon_url'),
        sort_order: _this2.post('sort_order')
      };
      if (id > 0) {
        yield model.where({ id: id }).update(values);
      } else {
        delete values.id;
        yield model.add(values);
      }
      return _this2.success(values);
    })();
  }

  infoAction() {
    var _this3 = this;

    return _asyncToGenerator(function* () {
      const id = _this3.post('id') || _this3.get('id');

      const model = _this3.model('channel');
      const data = yield model.where({ id: id }).find();
      return _this3.success(data);
    })();
  }

  /**
   * 删除一个banner
   * @returns {Promise<void>}
   */
  deleteAction() {
    var _this4 = this;

    return _asyncToGenerator(function* () {
      const id = _this4.post('id');
      yield _this4.model('channel').where({ id: id }).limit(1).delete();

      // TODO 事务，验证订单是否可删除（只有失效的订单才可以删除）

      return _this4.success();
    })();
  }
};
//# sourceMappingURL=channel.js.map