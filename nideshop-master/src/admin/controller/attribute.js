module.exports = class extends think.Controller {
  /**
   * 获取banner信息
   * @returns {Promise<void>}
   */
  async indexAction() {
    const attribute_category = await this.model('attribute_category').where().select();
    const data = await this.model('attribute').where().select();
    const categoryList = [];
    attribute_category.map((item) => {
      item.level = 1;
      categoryList.push(item);
      data.map((child) => {
        if (child.attribute_category_id === item.id) {
          child.level = 2;
          categoryList.push(child);
        }
      });
    });
    return this.success(categoryList);
  }

  async indexlistAction() {
    const attribute_category = await this.model('attribute_category').where().select();
    const data = await this.model('attribute').where().select();
    const categoryList = [];
    attribute_category.map((item) => {
      let obj = {};
      obj.label = item.name;
      obj.value = item.id;
      obj.children = [];
      data.map( (child) => {
        if(child.attribute_category_id === item.id) {
          let ob = {};    
          ob.value = child.id;
          ob.label = child.name;
          obj.children.push(ob);
        }
      })
      categoryList.push(obj);
    })
    return this.success(categoryList);
  }

  /**
   `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
   `attribute_category_id` int(11) unsigned NOT NULL DEFAULT '0',
   `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
   `input_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
   `values` text COLLATE utf8mb4_unicode_ci NOT NULL,
   `sort_order` tinyint(3) unsig
   */
  async addAction() {
    if (!this.isPost) {
      return false;
    }
    const id = this.post('id');

    const model = this.model('attribute');

    let values = {
      attribute_category_id: this.post('attribute_category_id'),
      name:this.post('name'),
      input_type:1,
      values: '',
      sort_order:0
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

    const model = this.model('attribute');
    const data = await model.where({id: id}).find();
    return this.success(data);
  }

  async infogoodsAction() {
    const id = this.post('id') || this.get('id');

    const model = this.model('goods_attribute');
    const data = await model.field('attribute_id,value').where({goods_id: id}).select();
    return this.success(data);
  }


  /**
   * 删除一个attribute
   * @returns {Promise<void>}
   */
  async deleteAction() {
    const id = this.post('id');
    await this.model('attribute').where({id: id}).limit(1).delete();

    // TODO 事务，验证订单是否可删除（只有失效的订单才可以删除）

    return this.success();
  }
};
