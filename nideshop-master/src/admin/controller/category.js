const Base = require('./base.js');

module.exports = class extends Base {
  /**
   * index action
   * @return {Promise} []
   */
  async indexAction() {
    const model = this.model('category');
    const data = await model.where({is_show: 1}).order(['sort_order ASC']).select();
    const topCategory = data.filter((item) => {
      return item.parent_id === 0;
    });
    const categoryList = [];
    topCategory.map((item) => {
      item.level = 1;
      categoryList.push(item);
      data.map((child) => {
        if (child.parent_id === item.id) {
          child.level = 2;
          categoryList.push(child);
        }
      });
    });
    return this.success(categoryList);
  }

  /**
   * 选出所有的二级分类
   * @returns {Promise<void>}
   */
  async secondAction () {
    const model = this.model('category');
    const data = await model.where({is_show: 1}).order(['sort_order ASC']).select();
    const second = data.filter((item) => {
      return item.parent_id != 0;
    })
    return this.success(second);

  }

  /**
   * 选出所有的一级分类
   * @returns {Promise<*|never>}
   */
  async topCategoryAction() {
    const model = this.model('category');
    const data = await model.where({parent_id: 0}).order(['id ASC']).select();

    return this.success(data);
  }

  async infoAction() {
    const id = this.get('id');
    const model = this.model('category');
    const data = await model.where({id: id}).find();

    return this.success(data);
  }

  /**
   * 保存分类
   * @returns {Promise<*>}
   */
  async storeAction() {
    if (!this.isPost) {
      return false;
    }

    const values = this.post();
    const id = this.post('id');

    const model = this.model('category');
    values.is_show = values.is_show ? 1 : 0;

    let datas = {};
    datas.id = values.id?values.id:0;
    datas.name = values.name? values.name:'';
    datas.keywords = values.keywords? values.keywords:'';
    datas.front_desc = values.front_desc? values.front_desc:'';
    datas.parent_id = values.parent_id? values.parent_id: 0;
    datas.sort_order = values.sort_order? values.sort_order: 0;
    datas.show_index= values.show_index? values.show_index:0;
    datas.is_show = values.is_show? values.is_show: 0;
    datas.banner_url = values.banner_url? values.banner_url: '';
    datas.icon_url = values.icon_url? values.icon_url: '';
    datas.img_url = values.img_url? values.img_url: '';
    datas.wap_banner_url = values.wap_banner_url? values.wap_banner_url: '';
    datas.level = values.level? values.level: '';
    datas.type = values.type? values.type: 0;
    datas.front_name = values.front_name? values.front_name:'';


    if (id > 0) {
      await model.where({id: id}).update(datas);
    } else {
      delete datas.id;
      await model.add(datas);
    }
    return this.success(datas);
  }

  async destoryAction() {
    const id = this.post('id');
    await this.model('category').where({id: id}).limit(1).delete();
    // TODO 删除图片

    return this.success();
  }
};

