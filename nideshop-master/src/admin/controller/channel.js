module.exports = class extends think.Controller {
  /**
   * 获取banner信息
   * @returns {Promise<void>}
   */
  async indexAction() {
    const channel = await this.model('channel').order({sort_order: 'asc'}).select();
    return this.success(channel);
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

  async addAction() {
    if (!this.isPost) {
      return false;
    }
    const id = this.post('id');

    const model = this.model('channel');

    const values = {
      id: this.post('id'),
      name: this.post('name'),
      url: '/pages/category/category?id=' + this.post('category_id'),
      icon_url: this.post('icon_url'),
      sort_order: this.post('sort_order')
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

    const model = this.model('channel');
    const data = await model.where({id: id}).find();
    return this.success(data);
  }

  /**
   * 删除一个banner
   * @returns {Promise<void>}
   */
  async deleteAction() {
    const id = this.post('id');
    await this.model('channel').where({id: id}).limit(1).delete();

    // TODO 事务，验证订单是否可删除（只有失效的订单才可以删除）

    return this.success();
  }
};
