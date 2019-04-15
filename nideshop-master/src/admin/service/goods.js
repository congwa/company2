module.exports = class extends think.Service {
  /**
   * 存入product 同步
   * @param goodsId
   * @returns {Promise.<*>}
   */
  /**
   * `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
   `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
   `goods_specification_ids` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
   `goods_sn` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
   `goods_number` mediumint(8) unsigned NOT NULL DEFAULT '0',
   `retail_price` decimal(10,2) unsig
   * @param goods
   * @returns {Promise<void>}
   */

  async deletePorduct(id) {
    const row = await this.model('product').where({id: id}).limit(1).delete();
    return row;
  }

};
