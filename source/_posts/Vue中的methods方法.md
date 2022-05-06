---
title: Vue中的methods方法
date: 2022.2.22
description: 
categories:  Vue
tags:
- Vue
---
<script src="prism.js"></script>
<link href="themes/prism.css" rel="stylesheet" />

## Vue中的methods方法

### 在 methods 中定义方法

我们可以使用 `methods` 属性给 Vue 定义方法，`methods` 的基本语法：

```js
var vm = new Vue({
  methods:{      
   方法名:function(){
        // 在此时定义方法，方法之间使用逗号分隔
   }
});
```

## 示例:

例如在 `methods `中定义一个名为`show `的方法

```js
methods:{
    show: function(){
        console.log("显示内容")
    }
}
```

## 在方法中访问属性 ##

在 `methods` 方法中访问 `data `的数据，可以直接通过 `this.属性名` 的形式来访问。

## 示例： ##

我们在 `show `方法中，访问` number `属性，可以直接通过 `this.number` 形式访问，其中 `this` 表示的就是Vue 实例对象：

```bash
<script>
export default {
  data() {
    return {
      methods: {
        handleClick: function () {
          alert("click");
        },
      },
    };
  },
};
</script>
```

如果是在 Vue 构造函数外部，可以使用 vm.方法名 定义或调用方法，还可以通过 vm.$data.属性名 来访问 data 中的数据。

## 一个简单的实例: ##

```bash
<template>
  <div id="app">
    <p>{{ message }}</p>
    <button @click="change">点我改名</button>
    <h1>点击按钮修改名字</h1>
  </div>
</template>
<script>
export default {
  data() {
    return {
      message: "老王",
    };
  },
  methods: {
    change() {
      this.message = "小李"; // 改变data中属性的值
    },
  },
};
</script>
```