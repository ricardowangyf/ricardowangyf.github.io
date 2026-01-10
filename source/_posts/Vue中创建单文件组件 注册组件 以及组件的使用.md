---
title: Vue中创建单文件组件 注册组件 以及组件的使用
date: 2022.2.28
description: 
categories: Vue
hide: true
tags:
- Vue
---
<script src="prism.js"></script>
<link href="themes/prism.css" rel="stylesheet" />

## Vue中创建单文件组件 注册组件 以及组件的使用

### 1. App.vue
```html
#App.vue
<template>
  <div>
    <v-home></v-home>
    <hr />
    <br />
    <v-news></v-news>
  </div>
</template>
<script>
// 引入组件
// 挂载组件
// 在模板中使用
import Home from "./Home.vue";
import News from "./News.vue";
export default {
  data() {
    return {
      msg: "你好vue",
    };
  },
  components: {
    /*前面的组件名称不能和html标签一样*/ "v-home": Home,
    "v-news": News,
  },
};
</script>
```


### 2. Header.vue
```html
# Header.vue
<template>
  <div>
    <h2 class="header">这是一个头部组件</h2>
  </div>
</template>
<script>
export default {
  data() {
    return {
      msg: "这是一个头部组件",
    };
  },
};
</script>
```



### 3. Home.vue
```html
<!-- Home.vue -->
<template>
<!-- 所有的内容要被根节点包含起来  -->
  <div>
    <v-header></v-header>
    <br />
    <hr />
    <h2>这是一个首页组件--{{ msg }}</h2>
    <button @click="run()">执行run方法</button>
  </div>
</template>
<script>
// 引入头部组件
import Header from "./Header.vue";
export default {
  data() {
    return {
      msg: "我是一个首页组件msg",
    };
  },
  methods: {
    run() {
      alert(this.msg);
    },
  },
  components: {
    "v-header": Header,
  },
};
</script>
```



### 4. News.vue
```html
<!-- News.vue -->
<template>
  <div>
    <v-header></v-header>
    <h2>这是一个新闻组件</h2>
    <ul>
      <li>111111</li>
      <li>2222</li>
      <li>333333</li>
    </ul>
  </div>
</template>

<script>
//引入头部组件
import Header from "./Header.vue";
export default {
  data() {
    return {
      msg: "我是一个新闻组件",
    };
  },
  components: {
    "v-header": Header,
  },
};
</script>
```