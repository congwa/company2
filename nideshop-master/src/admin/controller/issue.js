module.exports = class extends think.Controller {
  /**
   * 获取banner信息
   * @returns {Promise<void>}
   */
  async indexAction() {
    const issue = await this.model('goods_issue').select();
    return this.success(issue);
  }

  /**
   *  `id` int(11) NOT NULL AUTO_INCREMENT,
     `goods_id` text COLLATE utf8mb4_unicode_ci,
     `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
     `answer` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
   * @returns {Promise<*>}
   */
  async addAction() {
    if (!this.isPost) {
      return false;
    }
    const id = this.post('id');

    const model = this.model('goods_issue');

    const values = {
      goods_id: 1127052,
      question: this.post('question'),
      answer: this.post('answer')
    };
    if (id > 0) {
      await model.where({id: id}).update(values);
    } else {
      delete values.id;
      await model.add(values);
    }
    return this.success(values);
  }

  async infoAction() {
    const id = this.post('id') || this.get('id');

    const model = this.model('goods_issue');
    const data = await model.where({id: id}).find();
    return this.success(data);
  }

  /**
   * 删除一个banner
   * @returns {Promise<void>}
   */
  async deleteAction() {
    const id = this.post('id');
    await this.model('goods_issue').where({id: id}).limit(1).delete();

    // TODO 事务，验证订单是否可删除（只有失效的订单才可以删除）

    return this.success();
  }
};
