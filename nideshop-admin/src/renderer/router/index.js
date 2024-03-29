import Vue from 'vue'
import Router from 'vue-router'

Vue.use(Router)

export default new Router({
    scrollBehavior: () => ({y: 0}),
    routes: [
        {
            path: '/',
            name: 'dashboard',
            redirect: '/dashboard'
        },
        {
            path: '/dashboard',
            name: 'dashboard',
            component: require('@/components/DashboardPage'),
            children: [
                {
                    path: '/',
                    name: 'welcome',
                    component: require('@/components/WelcomePage')
                },
                {
                    path: 'goods',
                    name: 'goods',
                    component: require('@/components/Goods/GoodsPage')
                },
                {
                    path: 'goods/add',
                    name: 'goods_add',
                    component: require('@/components/Goods/GoodsAddPage')
                },
                {
                    path: 'category',
                    name: 'category',
                    component: require('@/components/Category/CategoryPage')
                },
                {
                    path: 'category/add',
                    name: 'category_add',
                    component: require('@/components/Category/CategoryAddPage')
                },
                {
                    path: 'brand',
                    name: 'brand',
                    component: require('@/components/Brand/BrandPage')
                },
                {
                    path: 'brand/add',
                    name: 'brand_add',
                    component: require('@/components/Brand/BrandAddPage')
                },
                {
                    path: 'order',
                    name: 'order',
                    component: require('@/components/Order/OrderPage')
                },
                {
                    path: 'order/detail',
                    name: 'order_detail',
                    component: require('@/components/Order/OrderDetailPage')
                },
                {
                    path: 'operate/topic',
                    name: 'topic',
                    component: require('@/components/Topic/TopicPage')
                },

                {
                    path: 'operate/topic/add',
                    name: 'topic_add',
                    component: require('@/components/Topic/TopicAddPage')
                 },
                {
                    path: 'operate/banner',
                    name: 'banner',
                    component: require('@/components/AD/BannerPage')
                },
                {
                    path: 'operate/banner/add',
                    name: 'banner_add',
                    component: require('@/components/AD/BannerAddPage')
                },

                {
                    path: 'operate/issue',
                    name: 'issue',
                    component: require('@/components/Issue/IssuePage')
                },
                {
                    path: 'operate/issue/add',
                    name: 'issue_add',
                    component: require('@/components/Issue/IssueAddPage')
                },

                {
                    path: 'operate/channel',
                    name: 'channel',
                    component: require('@/components/Channel/ChannelPage')
                },
                {
                    path: 'operate/channel/add',
                    name: 'channel_add',
                    component: require('@/components/Channel/ChannelAddPage')
                },
                {
                    path: 'user',
                    name: 'user',
                    component: require('@/components/User/UserPage')
                },
                {
                    path: 'user/add',
                    name: 'user_add',
                    component: require('@/components/User/UserAddPage')
                },

                {
                    path: 'attribute/add',
                    name: 'attribute_add',
                    component: require('@/components/Attribute/AttributeAddPage')
                },
                {
                    path: 'attribute',
                    name: 'attribute',
                    component: require('@/components/Attribute/AttributePage')
                },

                {
                    path: 'attribute_category/add',
                    name: 'attribute_category_add',
                    component: require('@/components/Attribute/Category/Attribute_CategoryAddPage')
                },
                {
                    path: 'attribute_category',
                    name: 'attribute_category',
                    component: require('@/components/Attribute/Category/Attribute_CategoryPage')
                },

                {
                    path: 'specification/add',
                    name: 'specification_add',
                    component: require('@/components/Specification/SpecificationAddPage')
                },
                {
                    path: 'specification',
                    name: 'specification',
                    component: require('@/components/Specification/SpecificationPage')
                },
                {
                  path: 'specification_list',
                  name: 'specification_list',
                  component: require('@/components/Specification/SpecList/SpecListPage')
                },
                {
                  path: 'specification_list/add',
                  name: 'specification_list_add',
                  component: require('@/components/Specification/SpecList/SpecListAddPage')
                }
            ]
        },
        {
            path: '/login',
            name: 'login',
            component: require('@/components/LoginPage')
        },
        {
            path: '*',
            redirect: '/dashboard'
        }
    ]
})
