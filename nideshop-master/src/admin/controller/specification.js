/**
 * 商品规格列表
 * @type {module.exports}
 */
module.exports = class extends think.Controller {
  /**
   * 规格分类信息
   */

  /**
   * 获取规格列表
   * @returns {Promise<void>}
   */
  async indexAction() {
    const data = await this.model('specification').select();

    return this.success(data);
  }

  /**
   * 获取唯一的分类列表（当用户没有编辑时候返回所有的，用户填写了一个后只能选取这个分类）
   * @returns {Promise<void>}
   */
  async onlyIndexAction() {
    const id = this.post('id') || this.get('id');
    const data = await this.model('goods_specification').where({goods_id: id}).find();
    if (think.isEmpty(data)) {
      // 内容为空时的处理
      const list = await this.model('specification').select();
      return this.success(list);
    }
    console.log(data);
    const t_list = await this.model('specification').where({id: data.specification_id}).find();
    return this.success([t_list]);
  }

  /**
   `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
   `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
   `sort_order` tinyint(3) unsig
   */
  async addAction() {
    if (!this.isPost) {
      return false;
    }
    const id = this.post('id');

    const model = await this.model('specification');

    const values = {
      name: this.post('name'),
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

    const model = this.model('specification');
    const data = await model.where({id: id}).find();
    return this.success(data);
  }

  async deleteAction() {
    const id = this.post('id');
    const row = await this.model('specification').where({id: id}).limit(1).delete();

    return this.success(row);
  }

  /**
   * 商品对应规格
   */

  /**
   * 商品对应规格信息
   * @returns {Promise<*|never>}
   */
  async infoSpecificationAction() {
    const goods_ids = this.post('id') || this.get('id');

    const g_data = await this.model('goods_specification').where({goods_id: goods_ids}).select();
    const s_data = await this.model('product').where({goods_id: goods_ids}).select();
    const data = [];
    g_data.forEach((item, index) => {
      const obj = {
        id: item.id,
        goods_id: item.goods_id,
        specification_id: item.specification_id,
        value: item.value,
        pic_url: item.pic_url,
        goods_number: s_data[index].goods_number,
        retail_price: s_data[index].retail_price
      };
      data.push(obj);
    });
    return this.success(data);
  }
  /**
   * 商品对应规格添加
   * @returns {Promise<void>}
   */
  async goodsSpecAddAction() {
    const id = this.post('id');
    const g_model = this.model('goods_specification');
    try {
      const values = {
        goods_id: id,
        specification_id: this.post('specification_id'),
        value: this.post('value'),
        pic_url: this.post('pic_url')
      };

      await g_model.startTrans();
      const spec_id = await g_model.add(values);

      const s_values = {
        goods_id: id,
        goods_specification_ids: spec_id,
        goods_sn: '',
        goods_number: this.post('goods_number'),
        retail_price: this.post('retail_price')
      };
      const row = await this.model('product').db(g_model.db()).add(s_values);

      const count = await this.model('product').db(g_model.db()).where({goods_id: id}).select();
      var retail_price;
      if(count.length >1){
        const min = await this.model('product').db(g_model.db()).where({goods_id: id}).min('retail_price');
        const max = await this.model('product').db(g_model.db()).where({goods_id: id}).max('retail_price');
        console.log(min);
        retail_price = min + '~' + max;
      }else {
        retail_price = this.post('retail_price');
      }
      console.log(retail_price);
      await this.model('goods').db(g_model.db()).where({id: id}).update({retail_price: retail_price});
      await g_model.commit();
      return this.success(row);
    } catch (e) {
      await g_model.rollback();
      return this.fail('提交失败', e);
    }
  }

  /**
   * 商品对应规格删除
   * @returns {Promise<void>}
   */
  async goodsSpecDeleteAction() {
    const id = this.post('id');
    const g_model = this.model('goods_specification');
    try {
      await g_model.startTrans();
      const spec_id = await g_model.where({id: id}).getField('specification_id');
      const data = await g_model.where({id: id}).delete();
      await this.model('product').db(g_model.db()).where({goods_specification_ids: spec_id}).delete();
      await g_model.commit();
      return this.success(data);
    } catch (e) {
      await g_model.rollback();
      this.fail('删除失败', e);
    }
  }
};
