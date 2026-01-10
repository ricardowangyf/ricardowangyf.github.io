---
title: Vue中data与html中data的写法
date: 2022.1.10
description: 
hide: true
categories:  Vue
tags:
- Vue
---
<script src="prism.js"></script>
<link href="themes/prism.css" rel="stylesheet" />

<!-- more -->

### Vue中的写法
```html
<template>
  <button v-on:click="count++">You clicked me {{ count }} times.</button>
</template>
<script>
export default {
  data() {
    return {
      count: 0,
    };
  },
};
</script>
```

### Javascript中的写法
```js
var vm = new Vue({
    el: '#example',
    data: {
        message: 'WANGYUFEI'
    },
    computed: {
        // 计算属性的 getter
        reversedMessage: function () {
            // `this` 指向 vm 实例
            return this.message.split('').reverse().join('')
        }
    }
})
```

## HTML中的写法
```html
<div id="example">
  <p>Original message: "{{ message }}"</p>
  <p>Computed reversed message: "{{ reversedMessage }}"</p>
</div>
<script>
var vm = new Vue({
  el: '#example', // 找到页面中 id = example 的 dom节点（div）
  data: {
    message: 'Hello'
  },
  computed: {
    // 计算属性的 getter
    reversedMessage: function () {
      // `this` 指向 vm 实例
      return this.message.split('').reverse().join('')
    }
  }
})
</script>
```

转换到 vue 单文件组件里面写法

```html
<template>
  <div>
    <p>Original message: "{{ message }}"</p>
    <p>Computed reversed message: "{{ reversedMessage }}"</p>
  </div>
<template>
<script>
export default {
  data() {
    return {
      message: 'Hello'
    }
  },
  computed: {
    // 计算属性的 getter
    reversedMessage: function () {
      // `this` 指向 vm 实例
      return this.message.split('').reverse().join('')
    }
  }
}
</script>
```

变化了什么

```diff
+ <template>
- <div id="example">
+  <div>
    <p>Original message: "{{ message }}"</p>
    <p>Computed reversed message: "{{ reversedMessage }}"</p>
  </div>
+ <template>
<script>
export default {
-  el: '#example', // 找到页面中 id = example 的 dom节点（div）
-  data: {
-    message: 'Hello'
-  },
+  data() {
+    return {
+      message: 'Hello'
+    }
+  },
  computed: {
    // 计算属性的 getter
    reversedMessage: function () {
      // `this` 指向 vm 实例
      return this.message.split('').reverse().join('')
    }
  }
}
</script>
```