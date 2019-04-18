module.exports = class extends think.Controller {
  /**
   * 获取banner信息
   * @returns {Promise<void>}
   */
  async indexAction() {
    const attribute = await this.model('attribute_category').where().select();
    return this.success(attribute);
  }

  /**
   `id` int(11) unsigned NOT NULL,
   `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
   `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
   */
  async addAction() {
    if (!this.isPost) {
      return false;
    }
    const id = this.post('id');

    const model = this.model('attribute_category');

    const values = {
      name: this.post('name'),
      enabled: this.post('enabled') ? 1 : 0
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

    const model = this.model('attribute_category');
    const data = await model.where({id: id}).find();
    return this.success(data);
  }

  /**
   * 删除一个attribute
   * @returns {Promise<void>}
   */
  async deleteAction() {
    const id = this.post('id');
    await this.model('attribute_category').where({id: id}).limit(1).delete();

    // TODO 事务，验证订单是否可删除（只有失效的订单才可以删除）

    return this.success();
  }
};
