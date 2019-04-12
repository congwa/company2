function _asyncToGenerator(fn) { return function () { var gen = fn.apply(this, arguments); return new Promise(function (resolve, reject) { function step(key, arg) { try { var info = gen[key](arg); var value = info.value; } catch (error) { reject(error); return; } if (info.done) { resolve(value); } else { return Promise.resolve(value).then(function (value) { step("next", value); }, function (err) { step("throw", err); }); } } return step("next"); }); }; }

const Base = require('./base.js');

module.exports = class extends Base {
  indexAction() {
    var _this = this;

    return _asyncToGenerator(function* () {
      const banner = yield _this.model('ad').where({ ad_position_id: 1 }).select();
      const channel = yield _this.model('channel').order({ sort_order: 'asc' }).select();
      const newGoods = yield _this.model('goods').field(['id', 'name', 'list_pic_url', 'retail_price']).where({ is_new: 1 }).limit(4).select();
      const hotGoods = yield _this.model('goods').field(['id', 'name', 'list_pic_url', 'retail_price', 'goods_brief']).where({ is_hot: 1 }).limit(3).select();
      const brandList = yield _this.model('brand').where({ is_new: 1 }).order({ new_sort_order: 'asc' }).limit(4).select();
      const topicList = yield _this.model('topic').limit(3).select();

      const categoryList = yield _this.model('category').where({ parent_id: 0, name: ['<>', '推荐'] }).select(); // 找出所有的一级分类
      const newCategoryList = [];
      //console.log('categoryList: ',categoryList);
      for (const categoryItem of categoryList) {
        const childCategoryIds = yield _this.model('category').where({ parent_id: categoryItem.id }).getField('id', 100); // 找出这个一级分类对应的子分类
        console.log('ids', childCategoryIds);
        let categoryGoods;
        if (childCategoryIds.length == 0) {
          // 当父分类下面没有子分类的情况
          categoryGoods = [];
        } else {
          categoryGoods = yield _this.model('goods').field(['id', 'name', 'list_pic_url', 'retail_price']).where({ category_id: ['IN', childCategoryIds] }).limit(7).select(); // 把这些子分类的详情找出来
        }
        newCategoryList.push({
          id: categoryItem.id,
          name: categoryItem.name,
          goodsList: categoryGoods
        });
      }

      return _this.success({
        banner: banner,
        channel: channel, // 首页商品显示类型
        newGoodsList: newGoods, // 新添加的商品
        hotGoodsList: hotGoods, // 热门商品
        brandList: brandList, // 品牌
        topicList: topicList, // 主题
        categoryList: newCategoryList //  详细分类列表
      });
    })();
  }
};
//# sourceMappingURL=index.js.map