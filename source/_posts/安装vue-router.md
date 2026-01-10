---
title: 安装vue-router
date: 2022.3.2
hide: true
categories: Vue
comments: true
tags: 
- Vue
---

<script src="prism.js"></script>
<link href="themes/prism.css" rel="stylesheet" />

## 1.安装vue-router

讲安装方法之前很关键的一点一定要记住！！！

`vue-router 3.0 对应使用 vue 2.x`
`vue-router 4.0 对应使用 vue 3.x`

[3.0文档](https://v3.router.vuejs.org/zh/installation.html)
[4.0文档](https://router.vuejs.org/zh/introduction.html)

1.安装vue项目

```bash
vue create hello-world
# 文件名称
```
安装vue项目的具体过程可以参考我的另外一篇[文章](https://wangyufei.fun/2022/03/02/%E5%AE%89%E8%A3%85vue%E9%A1%B9%E7%9B%AE/)


2.通过如下命令安装vue-router

```bash
npm install vue-router@3

npm install vue-router
```

3.查看是否安装成功

安装过后可以在`package.json`文件中查看到你的vue版本与vue-router版本
```bash
  "dependencies": {
    "core-js": "^3.8.3",
    "vue": "^2.6.14",
    "vue-router": "^3.5.3"
  },
```

## 2.下面添加一个实例

1.在src目录中创建文件夹router

![](https://s3.bmp.ovh/imgs/2022/03/4543a1d59b4b54fa.jpg)

2.在router目录中添加文件index.js

![](https://s3.bmp.ovh/imgs/2022/03/1f8ca267ab5fa7ad.jpg)

3.修改mian.js文件

```bash
import Vue from 'vue'
import App from './components/App'
import { router } from './router/index'

new Vue({
    // el: '#app',
    router,
    render(h) {
        return h(App);
    }
}).$mount('#app')
```


4.components目录中添加文件App.vue

```html
<template>
  <div class="warpper">
    <div>路由实例</div>
    <div class="router">
      <router-link active-class="wyf" to="/">首页</router-link>
      <router-link active-class="wyf" to="/good">好的</router-link>
      <router-link active-class="wyf" to="/about">关于</router-link>
      <router-link active-class="wyf" to="/user/1">鞋子</router-link>
      <router-link active-class="wyf" to="/user/2">帽子</router-link>
    </div>
    <!--定义路由插座-->
    <router-view></router-view>

    <div class="footer">
      <p>测试</p>
      <div>
        <a href="#">测试1</a>
        <a href="#">测试2</a>
        <a href="#">xxxxxxxxx</a>
        <a href="#">aaaaaaaaa</a>
      </div>
    </div>
  </div>
</template>

<style scoped>
.warpper {
  max-width: 980px;
  margin: 0 auto;
}
.router {
  background: #e8e7e3;
}
.router a {
  display: inline-block;
  padding: 13px 20px;
  font-weight: bold;
  text-decoration: auto;
}
.router-link-exact-active {
  color: #fff;
  background: #3f3f3f;
}

.footer {
  font-size: 12px;
  text-align: center;
}
.footer p {
  background: #e8e7e3;
  padding: 10px 18px;
}
.footer div a {
  color: #333;
  padding: 0 5px;
}
.footer div a:hover {
  color: #0028f3;
}
</style>
```

5.components目录中添加文件About.vue
```html
<template>
  <div>
    <h2>我是关于</h2>
    <p>xxxx</p>
  </div>
</template>
<script>
export default {
  name:'about',
};
</script>
```


6.components目录中添加文件Good.vue
```html
<template>
  <div>
    <p>Good</p> 
  </div>
</template>
<script>
export default {
  name:'about',
};
</script>
```
7.components目录中添加文件Home.vue
```html
<template>
  <div id="app">
    <!-- 可以定义不变的内容 -->
    <h3>{{title}}</h3>
    <!-- s可以定义不变的内容 -->
  </div>
</template>

<script>
export default{
    name:'app',
    data(){
        return{
            title:'首页'
        }
    }
}
</script>
```

8.components目录中添加文件NotFound.vue
```html
<template>
  <div class="notfound">
      <div>
        <h1>404</h1>
        <div>
            <p>页面不存在</p>
        </div>
      </div>
  </div>
</template>
<style scoped>
.notfound {
    text-align: center;
     min-height: 200px;
    display: flex;
    justify-content: center;
        color: #afafaf;
    align-items: center;
}
</style>
```

9.components目录中添加文件User.vue
```html
<template>
  <div>
      User {{ $route.params.id }}
  </div>
</template>
<script>
export default {
  name:'about',
};
</script>
```

10.index文件中添加内容
```js
import Vue from 'vue'
import Router from 'vue-router'
import About from '../components/About'
import Good from '../components/Good'
import Home from '../components/Home'
import NotFound from '../components/NotFound'
import User from '../components/User'

export const routes = [
    { path: '/', component: Home },
    { path: '/about', component: About },
    { path: '/good', component: Good },
    { path: '/user/:id', component: User },
    { path: '*', component: NotFound }
]

export const router = new Router({
    routes // (缩写) 相当于 routes: routes
});

Vue.use(Router);
```


至此，从安装vue-router到完成第一个实例全部结束

实例运行效果图如下:

![](https://s3.bmp.ovh/imgs/2022/03/d33b159b6fd5b0a3.jpg)