---
title: Vue路由组件之间传参
date: 2022.3.19
description: 
categories: 
tags:
- Vue
---
<script src="prism.js"></script>
<link href="themes/prism.css" rel="stylesheet" />


## Vue路由组件之间传参

我们经常需要把某种模式匹配到的所有路由，全都映射到同个组件。例如，我们有一个 User 组件，对于所有 ID 各不相同的用户，都要使用这个组件来渲染。通常的做法是“动态路由匹配”或者“query传参”，在组件中使用$route 来获取参数，从而使组件只能在某些特定的 URL 上使用，限制了其灵活性。

## $route

组件与 `$route` 的耦合

router.js

```js
import Vue from "vue";
import Router from "vue-router";
import User from "./views/user";

Vue.use(Router);

export default new Router({
  routes: [
    {
      path: "/user/:id",
      name: "user",
      component: User
    }
  ]
});
```

user.vue组件

```js
// $route的使用，导致此组件只能使用在动态路径参数的特定url上
<template>
  <div class="user">
    <h4>用户信息</h4>
    <div>userId： {{$route.params.id}}</div>
  </div>
</template>
```

**props**

通过 `props` 与组件解耦

router.js

```js
import Vue from "vue";
import Router from "vue-router";
import User from "./views/user";

Vue.use(Router);

export default new Router({
  routes: [
    {
      path: "/user/:id",
      name: "user",
      component: User,
      props: true
    }
  ]
});
```

user.vue组件
```html
// 使用 props 将组件和路由解耦,可以在任何地方使用该组件，通过props通信
<template>
  <div class="user">
    <h4>用户信息</h4>
    <div>userId： {{id}}</div>
  </div>
</template>

<script>
export default {
  props: ["id"]
};
</script>
```

**props三种使用方式**

user.vue组件
```html
<!-- 同一组件，不同路由模式 -->
<template>
  <div class="user">
    <h4>用户信息</h4>
    <div>userId： {{id}}</div>
  </div>
</template>

<script>
export default {
  props: ["id"]
};
</script>
```


**props传递 — 布尔模式**
**url：172.16.57.15:8080/#/user/1**

router.js
```js
// 如果 props 被设置为 true，route.params 将会被设置为组件属性。

export default new Router({
  routes: [
    {
      path: "/user/:id",
      name: "user",
      component: User,
      props: true
    }
  ]
});
```

**props传递 — 对象模式**
**url：172.16.57.15:8080/#/user**

router.js
```js
// 当 props 是静态的时候有用。
export default new Router({
  routes: [
    {
      path: "/user",
      name: "user",
      component: User,
      props: { id: 1 }
    }
  ]
});
```

**props传递 — 函数模式**
**url：172.16.57.15:8080/#/user?id=2**

router.js
```js
// 可以将参数转换成另一种类型，将静态值与基于路由的值结合等等。
export default new Router({
  routes: [
    {
      path: "/user",
      name: "user",
      component: User,
      props: route => {
        return { id: route.query.id };
      }
    }
  ]
});
```

**注意**： “props传递—对象模式”和“props传递—函数模式”使用props传参的时候，只能使用单个视图。