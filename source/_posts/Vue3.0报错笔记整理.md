---
title: Vue3.0报错笔记整理
date: 2022.10.24
hide: true
categories: Vue
tags: 
- Vue
---

<script src="prism.js"></script>
<link href="themes/prism.css" rel="stylesheet" />

##  2022.10月报错笔记整理

### 2022.10.24 Vue报错笔记

今天刚开始用vue3写项目，出现了一个vue-router的bug。
具体报错信息如下:

![](../_posts//images/2022.10.jpg)

原因是我当时安装vue-router的时候没有用cli脚手架，手动用命令安装了vue和vue-router，导致main.js又和之前有一些不一样的地方
之前在写vue2.0的时候main.js内的内容是这样的:
```js
import Vue from 'vue'
import Router from 'vue-router'
import LeftList from '../View/LeftList.vue'

export const routes = ({
    mode: 'history',
    linkActiveClass: 'is-active',
    routes: [
        {
            path: '/',
            redirect: '/list/all',
            component: LeftList,
        },
    ]
})

export const router = new Router({
    Router // (缩写) 相当于 routes: routes
});

Vue.use(Router);
```

写的时候不知道router4的写法，不知道怎么去注册router以及store  于是就换成了上面那种写法 项目虽然能运行但是一直就出现`export 'default' (imported as 'Vue') was not found in 'vue'`的问题。createApp是可以进行链式调用的
解决方案:
