---
title: Vue生命周期
date: 2022.2.20
description: 
categories: Vue
tags:
- Vue
---

## vue 生命周期 ##

Vue实例有一个完整的生命周期，也就是从**开始创建**、**初始化数据**、**编译模板**、**挂载Dom**、**渲染→更新→渲染**、**销毁等一系列过程，我们称这是Vue的生命周期**。通俗说就是Vue实例从创建到销毁的过程，就是生命周期。

每一个组件或者实例都会经历一个完整的生命周期，总共分为三个阶段：初始化、运行中、销毁。

1.实例、组件通过new Vue() 创建出来之后会初始化事件和生命周期，然后就会执行**beforeCreate钩子函数**，这个时候，**数据还没有挂载呢**，只是一个空壳，**无法访问到数据和真实的dom**，一般不做操作

2.**挂载数据，绑定事件等等，然后执行created函数**，这个时候已经可以使用到数据，也可以更改数据,在这里更改数据不会触发updated函数，**在这里可以在渲染前倒数第二次更改数据的机会，不会触发其他的钩子函数**，一般可以在这里做初始数据的获取

3.接下来开始找实例或者组件对应的模板，编译模板为虚拟dom放入到render函数中准备渲染，然后执行beforeMount钩子函数，在这个函数中虚拟dom已经创建完成，马上就要渲染,在这里也可以更改数据，不会触发updated，在这里可以在渲染前最后一次更改数据的机会，不会触发其他的钩子函数，一般可以在这里做初始数据的获取

4.**接下来开始render，渲染出真实dom**，然后**执行mounted钩子函数**，此时，组件已经出现在页面中，数据、真实dom都已经处理好了,事件都已经挂载好了，可以在这里操作真实dom等事情...

5.**当组件或实例的数据更改之后，会立即执行beforeUpdate**，然后vue的虚拟dom机制会重新构建虚拟dom与上一次的虚拟dom树利用diff算法进行对比之后重新渲染，一般不做什么事儿

6.**当更新完成后，执行updated，数据已经更改完成，dom也重新render完成，可以操作更新后的虚拟dom**

7.当经过某种途径调用$destroy方法后，立即执行beforeDestroy，一般在这里做一些善后工作，例如清除计时器、清除非指令绑定的事件等等

8.组件的数据绑定、监听...去掉后只剩下dom空壳，这个时候，执行destroyed，在这里做善后工作也可以

9.vue中的钩子函数;**beforeCreate、created、beforeMount、mounted、beforeUpdate、updated、beforeDestroy、destroyed。**

```bash
<template>
  <div>
    <h1>{{ message }}</h1>
  </div>
</template>
<script>
export default {
  data() {
    return {
      message: "触发组件更新",
    };
  },
  beforeCreate() {
    console.group("------beforeCreate创建前状态------");
    console.log("%c%s", "color:red", "el     : " + this.$el); //undefined
    console.log("%c%s", "color:red", "data   : " + this.$data); //undefined
    console.log("%c%s", "color:red", "message: " + this.message);
  },
  created() {
    console.group("------created创建完毕状态------");
    console.log("%c%s", "color:red", "el     : " + this.$el); //undefined
    console.log("%c%s", "color:red", "data   : " + this.$data); //已被初始化
    console.log("%c%s", "color:red", "message: " + this.message); //已被初始化
  },
  beforeMount() {
    console.group("------beforeMount挂载前状态------");
    console.log("%c%s", "color:red", "el     : " + this.$el); //已被初始化
    console.log(this.$el);
    console.log("%c%s", "color:red", "data   : " + this.$data); //已被初始化
    console.log("%c%s", "color:red", "message: " + this.message); //已被初始化
  },
  mounted() {
    console.group("------mounted 挂载结束状态------");
    console.log("%c%s", "color:red", "el     : " + this.$el); //已被初始化
    console.log(this.$el);
    console.log("%c%s", "color:red", "data   : " + this.$data); //已被初始化
    console.log("%c%s", "color:red", "message: " + this.message); //已被初始化
  },
  beforeUpdate() {
    console.group("beforeUpdate 更新前状态===============》");
    console.log("%c%s", "color:red", "el     : " + this.$el);
    console.log(this.$el);
    console.log("%c%s", "color:red", "data   : " + this.$data);
    console.log("%c%s", "color:red", "message: " + this.message);
  },
  updated() {
    console.group("updated 更新完成状态===============》");
    console.log("%c%s", "color:red", "el     : " + this.$el);
    console.log(this.$el);
    console.log("%c%s", "color:red", "data   : " + this.$data);
    console.log("%c%s", "color:red", "message: " + this.message);
  },
  beforeDestroy () {
    console.group("beforeDestroy 销毁前状态===============》");
    console.log("%c%s", "color:red", "el     : " + this.$el);
    console.log(this.$el);
    console.log("%c%s", "color:red", "data   : " + this.$data);
    console.log("%c%s", "color:red", "message: " + this.message);
  },
  destroyed() {
    console.group("destroyed 销毁完成状态===============》");
    console.log("%c%s", "color:red", "el     : " + this.$el);
    console.log(this.$el);
    console.log("%c%s", "color:red", "data   : " + this.$data);
    console.log("%c%s", "color:red", "message: " + this.message);
  },
};
#  vue实例若数据未跟新只会打印到 mounted挂载结束状态

# vm.message='触发组件更新' vue会继续执行 beforeUpdate 和 updated
</script>

```