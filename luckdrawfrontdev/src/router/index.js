import Vue from "vue";
import Router from "vue-router";

import drawShowIndex from "@/views/drawShow/index.vue";
import drawPage from "@/views/drawShow/drawPage.vue";
import adminIndex from "@/views/admin/adminIndex.vue";
import adminLogin from "@/views/admin/adminLogin.vue";
import containerIndex from "@/views/admin/adminContainer/containerIndex.vue";
import stuffInfoList from "@/views/admin/stuffInfo/stuffInfoList.vue";

Vue.use(Router);

const router = new Router({
    routes: [
        // {
        //     path: "/",
        //     component: Home
        // },
        {
            path: "/",
            component: drawShowIndex,
            children: [

            ]
        }, {
            path: "/drawPage",
            component: drawPage,
            children: [

            ]
        }, {
            path: "/admin",
            component: adminLogin,
            children: [

            ]
        }, {
            path: "/adminIndex",
            component: adminIndex,
            //子路由嵌套
            children: [{
                path: "/containerIndex",
                component: containerIndex
            }, {
                path: "/stuffInfoList",
                component: stuffInfoList
            }]
        }
    ]
});

// 导航守卫
// 使用 router.beforeEach 注册一个全局前置守卫，判断用户是否登陆
router.beforeEach((to, from, next) => {
    if (to.path === '/admin') {
        next();
    } else {
        let token = localStorage.getItem('Authorization');

        if (token === null || token === '') {
            next('/admin');
        } else {
            next();
        }
    }
});
export default router;