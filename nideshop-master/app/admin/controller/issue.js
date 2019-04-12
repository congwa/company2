function _asyncToGenerator(fn) { return function () { var gen = fn.apply(this, arguments); return new Promise(function (resolve, reject) { function step(key, arg) { try { var info = gen[key](arg); var value = info.value; } catch (error) { reject(error); return; } if (info.done) { resolve(value); } else { return Promise.resolve(value).then(function (value) { step("next", value); }, function (err) { step("throw", err); }); } } return step("next"); }); }; }

module.exports = class extends think.Controller {
  /**
   * 获取banner信息
   * @returns {Promise<void>}
   */
  indexAction() {
    var _this = this;

    return _asyncToGenerator(function* () {
      const issue = yield _this.model('goods_issue').select();
      return _this.success(issue);
    })();
  }

  /**
   *  `id` int(11) NOT NULL AUTO_INCREMENT,
     `goods_id` text COLLATE utf8mb4_unicode_ci,
     `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
     `answer` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
   * @returns {Promise<*>}
   */
  addAction() {
    var _this2 = this;

    return _asyncToGenerator(function* () {
      if (!_this2.isPost) {
        return false;
      }
      const id = _this2.post('id');

      const model = _this2.model('goods_issue');

      let values = {
        goods_id: 1127052,
        question: _this2.post('question'),
        answer: _this2.post('answer')
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

      const model = _this3.model('goods_issue');
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
      yield _this4.model('goods_issue').where({ id: id }).limit(1).delete();

      // TODO 事务，验证订单是否可删除（只有失效的订单才可以删除）

      return _this4.success();
    })();
  }
};
//# sourceMappingURL=issue.js.map