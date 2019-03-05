module.exports = class extends think.Controller {
  /**
   * 获取banner信息
   * @returns {Promise<void>}
   */
  async indexAction() {
    const banner = await this.model('ad').where({ad_position_id: 1}).select();
    return this.success(banner);
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
  async addAction() {
    if (!this.isPost) {
      return false;
    }
    const id = this.post('id');

    const model = this.model('ad');

    let values = {
      ad_position_id:1,
      media_type:1,
      name:this.post('name'),
      link:'',
      image_url:this.post('image_url'),
      content: this.post('content'),
      end_time: 0,
      enabled: this.post('enabled')? 1: 0
    };
    if (id > 0) {
      await model.where({id: id}).update(values);
    } else {
      delete values.id;
      await model.add(values);
    }
    return this.success(values);
  }

  async infoAction(){
    const id = this.post('id') || this.get('id');

    const model = this.model('ad');
    const data = await model.where({id: id}).find();
    return this.success(data);
  }


  /**
   * 删除一个banner
   * @returns {Promise<void>}
   */
  async deleteAction() {
    const id = this.post('id');
    await this.model('ad').where({id: id}).limit(1).delete();

    // TODO 事务，验证订单是否可删除（只有失效的订单才可以删除）

    return this.success();
  }
};
