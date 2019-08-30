import Vue from 'vue'
import Router from 'vue-router'
import Index from './views/index.vue'
import Mavoneditor from './views/mavoneditor'


Vue.use(Router)

export default new Router({
  routes: [
    {path: '/',component:Index},
    {path:'/index',component:Index},
    {path:'/meditor',component:Mavoneditor}
  ]
})
