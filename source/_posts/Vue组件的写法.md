---
title: Vue组件写法
date: 2021-12-16 21:18:11
description: 
categories: 
tags:
- Vue
---

<script src="prism.js"></script>
<link href="themes/prism.css" rel="stylesheet" />

<!-- more -->
## Vue中的组件写法 ##

### 第一种写法 ###

```bash
<!DOCTYPE html>
<html>
    <body>
        <div id="app">
            <my-component></my-component>
        </div>
        <-- 注意：使用<script>标签时，type指定为text/x-template，意在告诉浏览器这不是一段js脚本，浏览器在解析HTML文档时会忽略<script>标签内定义的内容。-->
        <script type="text/x-template" id="myComponent">//注意 type 和id。
            <div>This is a component!</div>
        </script>
    </body>
    <script src="js/vue.js"></script>
    <script>
        //全局注册组件
        Vue.component('my-component',{
            template: '#myComponent'
        })
        new Vue({
            el: '#app'
        })
    </script>
</html>
```

### 第二种使用template标签 ###

```bash
<!DOCTYPE html>
<html>
    <body>
        <div id="app">
            <my-component></my-component>
        </div>
        ###注意：当你正在使用<script>标签时，type指定为text/x-template，
        ###这个意思就是告诉浏览器这不是一段js脚本，
        ###浏览器在解析HTML文档时会忽略<script>标签内定义的内容。
        <script type="text/x-template" id="myComponent">//注意 type 和id。
            <div>This is a component!</div>
        </script>
    </body>
    <script src="js/vue.js"></script>
    <script>
        //全局注册组件
        Vue.component('my-component',{
            template: '#myComponent'
        })
        new Vue({
            el: '#app'
        })
    </script>
</html>
```

### 第三种写法
这种方法基本用于vue的单页面应用之中，详情可见[Vue官网](https://cn.vuejs.org/v2/guide/single-file-components.html)

```html
<template>
  <div class="hello">
    <h1>{{ msg }}</h1>
  </div>
</template>

<script>
export default {
  name: 'hello',
  data () {
    return {
      msg: '欢迎！'
    }
  }
}
</script>

```
###  3.1  App.vue文件
```html
<!-- 展示模板 -->
<template>
  <div id="app">
    <img src="./assets/logo.png">
    <hello></hello>
  </div>
</template>
<script>
// 导入组件
import Hello from './components/Hello'

export default {
  name: 'app',
  components: {
    Hello
  }
}
</script>
<!-- 样式代码 -->
<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
```