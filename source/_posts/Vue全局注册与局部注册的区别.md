---
title: Vue全局注册与局部注册的区别
date: 2022.2.16
description: 
categories: Vue
tags:
- Vue
---

<link href="themes/prism.css" rel="stylesheet" />
<script src="prism.js" data-manual></script>

## Vue全局注册与局部注册的区别

不同点

1.注册位置不同
全局注册是在src/mian.js中
局部注册是写在APP.vue中

2.语法的不同点

全局注册

```js
Vue.component('myheader',header),
Vue.component('mycontent',content),
Vue.component('mybottom',bottom),
```

局部注册

```js
export default {
  name: 'app',
  components:{
    'myheader':Header,
    'mycontent':Content,
    'mybottom':Bottom
  }
}
```

3.起作用的地方不同

全局注册是都全都能用
局部注册是在哪里注册就用在哪里

## 相同点

导入方式一样

```js
import Header from './components/header'
import Content from './components/content'
import Bottom from './components/bottom'
```