---
title: Vue路由三种写法方式
date: 2022.2.26
description: 
categories: Vue
tags:
- Vue
---


<link href="themes/prism.css" rel="stylesheet" />
<script src="prism.js" data-manual></script>

## 常见(性能一般)

```js
import Index from "@/components/index"
const router = new Router({
    routes: [
        {
        path: '/',
        name: 'Index'
        component: Index,
        }
    ]
})
```
## 性能有优化

```js
const Index = (resolve) => {
  import('@/components/index').then((module) => {
    resolve(module);
  });
};
const router = new Router({
    routes: [
        {
        path: '/',
        name: 'Index'
        component: Index,
        }
    ]
})
```

## 路由懒加载(性能较优，推荐使用)

```js
const index = require('@/components/index');
const Index = resolve => require.ensure([], () => resolve(index), 'list');
const router = new Router({
    routes: [
        {
        path: '/',
        name: 'Index'
        component: Index,
        }
    ]
})
```