---
title: Vue中的语法糖
date: 2022.2.24
description: 
categories: Vue
tags:
- Vue
---
<!-- <script src="prism.js"></script>
<link href="themes/prism.css" rel="stylesheet" /> -->

## Vue中的语法糖

### 1、什么是语法糖？
学习语法糖之前我们要了解什么是语法糖：
语法糖（Syntactic sugar），也译为糖衣语法，是由英国计算机科学家彼得·约翰·兰达（Peter J. Landin）发明的一个术语，指计算机语言中添加的某种语法，这种语法对语言的功能并没有影响，但是更方便程序员使用。通常来说使用语法糖能够增加程序的可读性，从而减少程序代码出错的机会。

### 2、VUE中语法糖有哪些?

#### 2.1、最常见的语法糖 v-model
使用 v-model 可以实现数据双向绑定，但是如何实现的呢？
v-model 绑定数据之后，既绑定了数据，又添加了事件监听，这个事件就是 input 事件。
使用案例：
```html
<!-- 语法糖写法 -->
<input type="text" v-model="name" >
<!-- 还原为以下实例 -->
<input type="text" 
 v-bind:value="name" 
 v-on:input="name=$event.target.value">
```
输入的时候会触发 input 事件，input 事件会把当前值赋值给 value ，这就是 v-model 为什么可以实现双向绑定的原因。

#### 2.2、v-bind 的语法糖
v-bind 用来添加动态属性的，常见的 src、href、class、style、title 等属性都可以通过 v-bind 添加动态属性值。
v-bind 的语法糖就是去掉 v-bind 替换成冒号 (:)
具体实例:
```html
<!-- 语法糖写法 -->
<div :title="title">
 <img :src="url" alt="">
 <a :href="link" rel="external nofollow"  rel="external nofollow" >没有语法糖</a>
</div>

<!-- 没有语法糖 -->
<div v-bind:title="title">
 <img v-bind:src="url" alt="">
 <a v-bind:href="link" rel="external nofollow"  rel="external nofollow" >没有语法糖</a>
</div>
```

#### 2.2、v-on 的语法糖
v-on 绑定事件监听器的，v-on 的语法糖，就是简写成@ 。
情况1：如果方法不传参时，可以不加小括号。
```html
<!-- 需要注意的是，如果方法本身有一个参数，会默认将原生的事件event参数传递进来 -->
<button @click="btn">语法糖</button>
<button v-on:click="btn">无语法糖</button>

methods:{
 btn( event ){
  console.log( 'event' , event )
 }
}
```
情况2：如果需要传递参数时，又同时需要 event 参数。
```html
<button @click="btn( '点击事件' , $event )">语法糖</button>

<!-- 需要注意的是，$event 事件拿到浏览器事件对象 -->
methods:{
 btn( type, event ){
  console.log( 'type' , type ) //点击事件
  console.log( 'event' , event )
 }
}
```

#### 2.3、修饰符
修饰符是以半角句号 . 指明的特殊后缀。v-on 后面的修饰符，也是语法糖。

示例：链接添加点击事件，点击之后不希望跳转。
```html
<!--  语法糖 -->
<a href="http://www.baidu.com" rel="external nofollow"  rel="external nofollow"  @click.prevent="go">百度</a>

<!-- 普通写法 -->
<a href="http://www.baidu.com" rel="external nofollow"  rel="external nofollow"  v-on:click="go">百度</a>
methods:{
 go(e){
  e.preventDefault();
  console.log('阻止链接跳转')
 }
}
```

prevent 修饰符是阻止默认事件。还有 submit 同样也适用。

```html
<form @submit.prevent="onSubmit"></form>
```

下列是常见的修饰符，与上边 .prevent 使用相同。
*  stop 用来阻止事件冒泡。
*  .once 事件只触发一次。
*  .self 事件只在自身触发，不能从内部触发。
*  .enter | .tab | .delete | .esc ..... 键盘修饰符
*  .ctr | .alt | .shift | .meta 系统修饰符


### 3、动态css

使用 v-bind 可以通过 style 或 class， 可以添加动态样式。
```html
<!-- 点击 你好，实现文字红黑之间切换 -->
<h1 @click=" changeColor = !changeColor " :style="{color:changeColor?'red':'black'}">
 你好
</h1>

data:{
  changeColor:false
}
```

### 4、注册组件语法糖
所谓的注册组件语法糖是指省去组件构造器的定义，直接将组件构造器对象传入注册组件函数里，这样会减少 CPU 的调度以及内存的分配。

全局组件使用：
```js
//全局组件语法糖写法
Vue.component(
  'my-component' , 
  template:`
  	<div>组件内容</div>
  `)

/* 全局组件注册 */
//  组件使用
<my-component></my-component>
//注册组件
const myComponent = Vue.extend({
 template:`
  <div>
   <h2>VUkeh</h2>    
  </div>
  `
})
Vue.component('myComponent', myComponent)
```
局部组件使用：
```js
// 全局组件语法糖写法
components:{
  'my-component':{
  	template:`<div>组件内容</div>`
  }
}

// 局部组件注册
// 注册组件
const myComponent = Vue.extend({
 template:`
  <div>
   <h2>VUkeh</h2>    
  </div>
  `,
  components:{
  	child:{
     template:`<div>子组件内容</div>`
    }
  }
})
Vue.component('myComponent', myComponent)
```