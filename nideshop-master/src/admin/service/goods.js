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

  /**
   * 最多有两个不同的状太  每次商品规格信息编写改变进行触发
   * @param id
   * @returns {Promise<void>}
   */
  async productUpdate(id) {
    // const data = await this.model('goods_specification').where({goods_id:id}).select();
    // let spec = [];
    // let spec1 = [];
    // let spec2 = [];
    // data.forEach(item => {
    //   if(!spec.includes(item.specification_id)){
    //     spec.push(item.specification_id);
    //   }
    // });
    // let spec1 = data.filter(item => {
    //   return item.specification_id == spec[0];
    // });
    // let spec2 = data.filter(item => {
    //   return item.specification_id == spec[1];
    // })
    // let arr = [];
    // spec1.forEach( item => {
    //   spec2.forEach( it2 => {
    //     let d = {
    //       goods_id: id,
    //       goods_specification_ids: item.specification_id + '_' + it2.specification_id,
    //       goods_sn: '',
    //       goods_number: 0,
    //       retail_price: 0
    //     };
    //     arr.push(d);
    //   });
    // });
    // const pro  = await this.model('product').where({goods_id:id}).delete();
    // const product = await this.model('product').addMany(arr);
    // return product;
  }
};
