import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import header from './components/header/header'
import mavonEditor from 'mavon-editor'
import 'mavon-editor/dist/css/index.css';

Vue.use(mavonEditor);
 Vue.config.productionTip = false;
 Vue.prototype.axios=axios;
 axios.defaults.baseURL="http://127.0.0.1:8081";
Vue.component("my-header",header);
new Vue({
  router,
  store,
  render: h => h(App)
  
}).$mount('#app')
