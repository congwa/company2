import Vue from 'vue'
import Axios from 'axios'
import VueAxios from 'vue-axios'
import ElementUI from 'element-ui'
import VueQuillEditor from 'vue-quill-editor'
import 'element-ui/lib/theme-default/index.css'

import App from './App'
import router from './router'
import store from './store'

Vue.use(VueAxios, Axios);
Vue.use(ElementUI);
Vue.use(VueQuillEditor);

import { quillEditor } from 'vue-quill-editor'
import 'quill/dist/quill.core.css'
import 'quill/dist/quill.snow.css'
import 'quill/dist/quill.bubble.css'
Vue.component('quillEditor', quillEditor)

import api  from '@/config/api';

router.beforeEach((to, from, next) => {

	let token = localStorage.getItem('token') || '';

    //配置接口信息
    Axios.defaults.baseURL = api.rootUrl;
    Axios.defaults.headers.common['X-Nideshop-Token'] = token;

	if (!token && to.name !== 'login') {
		next({
			path: '/login',
			query: { redirect: to.fullPath }
		})
	} else {
		next()
	}
});

if (!process.env.IS_WEB) {
  Vue.use(require('vue-electron'))
}
Vue.config.productionTip = false

/* eslint-disable no-new */
new Vue({
  components: { App },
  router,
  store,
  template: '<App/>'
}).$mount('#app')
