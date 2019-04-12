function _asyncToGenerator(fn) { return function () { var gen = fn.apply(this, arguments); return new Promise(function (resolve, reject) { function step(key, arg) { try { var info = gen[key](arg); var value = info.value; } catch (error) { reject(error); return; } if (info.done) { resolve(value); } else { return Promise.resolve(value).then(function (value) { step("next", value); }, function (err) { step("throw", err); }); } } return step("next"); }); }; }

module.exports = class extends think.Controller {
  /**
   * 获取banner信息
   * @returns {Promise<void>}
   */
  indexAction() {
    var _this = this;

    return _asyncToGenerator(function* () {
      const banner = yield _this.model('ad').where({ ad_position_id: 1 }).select();
      return _this.success(banner);
    })();
  }

  /**
   * CREATE TABLE `nideshop_ad` (
   `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
   `ad_position_id` smallint(5) unsigned NOT NULL DEFAULT '0',
   `media_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
   `name` varchar(60) NOT NULL DEFAULT '',
   `link` varchar(255) NOT NULL DEFAULT '',
   `image_url` text NOT NULL,
   `content` varchar(255) NOT NULL DEFAULT '',
   `end_time` int(11) NOT NULL DEFAULT '0',
   `enabled` tinyint(3) unsigned NOT NULL DEFAULT '1',
   PRIMARY KEY (`id`),
   KEY `position_id` (`ad_position_id`),
   KEY `enabled` (`enabled`)
   ) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='banner图表\n';
   * 添加一个banner
   * @returns {Promise<void>}
   */
  addAction() {
    var _this2 = this;

    return _asyncToGenerator(function* () {
      if (!_this2.isPost) {
        return false;
      }
      const id = _this2.post('id');

      const model = _this2.model('ad');

      let values = {
        ad_position_id: 1,
        media_type: 1,
        name: _this2.post('name'),
        link: '',
        image_url: _this2.post('image_url'),
        content: _this2.post('content'),
        end_time: 0,
        enabled: _this2.post('enabled') ? 1 : 0
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

      const model = _this3.model('ad');
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
      yield _this4.model('ad').where({ id: id }).limit(1).delete();

      // TODO 事务，验证订单是否可删除（只有失效的订单才可以删除）

      return _this4.success();
    })();
  }
};
//# sourceMappingURL=banner.js.map