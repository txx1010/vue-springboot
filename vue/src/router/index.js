import Vue from 'vue'
import VueRouter from 'vue-router'
import store from '@/store'


Vue.use(VueRouter)

const routes = [
  {
    path: '/login',
    name: 'login',
    component: () => import('../views/Login.vue')
  },
  {
    path: '/register',
    name: 'Register',
    component: () => import('../views/Register.vue')
  },
  {
    path: '/404',
    name: '404',
    component: () => import('../views/404.vue')
  },
  {
    path: '/front',
    name: 'Front',
    component: () => import('../views/front/Front'),
    children :[
      {
        path: 'home',
        name: 'FrontHome',
        component: () => import('../views/front/Home')
      },
      {
        path: 'item1',
        name: 'Item1',
        component: () => import('../views/front/Item1')
      },
      {
        path: 'person',
        name: 'FrontPerson',
        component: () => import('../views/front/Person')
      },
      {
        path: 'password',
        name: 'FrontPassword',
        component: () => import('../views/front/Password')
      },
      {
        path: 'article',
        name: 'FrontArticle',
        component: () => import('../views/front/Article')
      },
      {
        path: 'articleDetail',
        name: 'ArticleDetail',
        component: () => import('../views/front/ArticleDetail')
      },
    ]
  },
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

// 提供一个重置路由的方法
export const resetRouter = () => {
  router.matcher = new VueRouter({
    mode: 'history',
    base: process.env.BASE_URL,
    routes
  })
}

export const setRouters = () =>{
  const storeMenus=localStorage.getItem("menus");
  if(storeMenus) {

    //获取当前的路由名称数组
    const currentRouteNames = router.getRoutes().map(v => v.name)
    if(!currentRouteNames.includes('Manage')){
      //拼装动态路由
      const manageRoute = {path: '/', name:'Manage',component: () => import('../views/Manage.vue'), redirect:"/home", children:[
          { path: 'person', name: '个人信息', component: () => import('../views/Person.vue')},
          { path: 'password', name: '修改密码', component: () => import('../views/Password.vue')}
        ]}
      const menus = JSON.parse(storeMenus)
      menus.forEach(item =>{
        if(item.path){    //当且仅当path不为空的时候才去设置路由
          let itemMenu = {path:item.path.replace("/",""),name: item.name,component:() => import('../views/' + item.pagePath + '.vue')}
          manageRoute.children.push(itemMenu)
        } else if(item.children.length) {
          item.children.forEach(item =>{
            if(item.path){
              let itemMenu = {path:item.path.replace("/",""),name: item.name,component:() => import('../views/' + item.pagePath + '.vue')}
              manageRoute.children.push(itemMenu)
            }
          })
        }
      })
      //动态添加到现在的路由对象中去
      router.addRoute(manageRoute)
    }
  }
}

//重置就再set一次路由
setRouters()

//路由守卫
router.beforeEach((to, from, next) =>{
  localStorage.setItem("currentPathName",to.name) //设置当前的路由,为了在Header组件中使用
  store.commit("setPath")     //触发store的数据更新

  //未找到路由的情况
  if(!to.matched.length){
    const storeMenus = localStorage.getItem("menus");
    if(storeMenus){
      next("/404")
    } else {
      // next("/login")
      next("/front/home")
    }
  }
  //其他的情况都放行
  next()  //放行路由
})

export default router
