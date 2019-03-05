const Base = require('./base.js');

module.exports = class extends Base {
  async indexAction() {
    const banner = await this.model('ad').where({ad_position_id: 1}).select();
    const channel = await this.model('channel').order({sort_order: 'asc'}).select();
    const newGoods = await this.model('goods').field(['id', 'name', 'list_pic_url', 'retail_price']).where({is_new: 1}).limit(4).select();
    const hotGoods = await this.model('goods').field(['id', 'name', 'list_pic_url', 'retail_price', 'goods_brief']).where({is_hot: 1}).limit(3).select();
    const brandList = await this.model('brand').where({is_new: 1}).order({new_sort_order: 'asc'}).limit(4).select();
    const topicList = await this.model('topic').limit(3).select();


    const categoryList = await this.model('category').where({parent_id: 0, name: ['<>', '推荐']}).select(); // 找出所有的一级分类
    const newCategoryList = [];
    //console.log('categoryList: ',categoryList);
    for (const categoryItem of categoryList) {
      const childCategoryIds = await this.model('category').where({parent_id: categoryItem.id}).getField('id', 100);  // 找出这个一级分类对应的子分类
      console.log('ids',childCategoryIds);
      let categoryGoods;
      if(childCategoryIds.length == 0 ){   // 当父分类下面没有子分类的情况
        categoryGoods = [];
      }else{
        categoryGoods = await this.model('goods').field(['id', 'name', 'list_pic_url', 'retail_price']).where({category_id: ['IN', childCategoryIds]}).limit(7).select(); // 把这些子分类的详情找出来
      }
      newCategoryList.push({
        id: categoryItem.id,
        name: categoryItem.name,
        goodsList: categoryGoods
      });
    }

    return this.success({
      banner: banner,
      channel: channel,        // 首页商品显示类型
      newGoodsList: newGoods,  // 新添加的商品
      hotGoodsList: hotGoods,  // 热门商品
      brandList: brandList,    // 品牌
      topicList: topicList,    // 主题
      categoryList: newCategoryList //  详细分类列表
    });
  }
};
