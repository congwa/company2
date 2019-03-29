const Base = require('./base.js');

module.exports = class extends Base {
  /**
   * index action
   * @return {Promise} []
   */
  async indexAction() {
    const page = this.get('page') || 1;
    const size = this.get('size') || 10;
    const name = this.get('name') || '';

    const model = this.model('goods');
    const data = await model.where({name: ['like', `%${name}%`]}).order(['id DESC']).page(page, size).countSelect();

    return this.success(data);
  }

  async infoAction() {
    const id = this.get('id');
    const model = this.model('goods');
    const data = await model.where({id: id}).find();

    return this.success(data);
  }

  async storeAction() {
    if (!this.isPost) {
      return false;
    }

    const values = this.post();
    const id = this.post('id');

    //添加goods表
    const model = this.model('goods');
    values.is_on_sale = values.is_on_sale ? 1 : 0;
    values.is_new = values.is_new ? 1 : 0;
    values.is_hot = values.is_hot ? 1 : 0;
    values.is_delete = values.is_delete ? 1 : 0;  // 0代表上架  1代表下架
    if (id > 0) {
      await model.where({id: id}).update(values);
    } else {
      delete values.id;
      await model.add(values);
    }
    //添加goods_gallery
    const gallery_list = values['gallery'];
    await this.model('goods_gallery').where({id:id}).delete();
    const list = gallery_list.map((url ,index)=> {
      return {img_url:url,goods_id:id,img_desc:'',sort_order:index}
    })
    await this.model('goods_gallery').addMany(list);

    //添加商品属性
    const goods_attribute = values['attribute'];
    await this.model('goods_attribute').where({id:id}).delete();
    const a_list = goods_attribute.map(item => {
      item.goods_id = id;
      return item;
    })
    await this.model('goods_attribute').addMany(a_list);


    return this.success(values);
  }


  async destoryAction() {
    const id = this.post('id');
    await this.model('goods').where({id: id}).limit(1).delete();
    // TODO 删除图片

    return this.success();
  }
};
