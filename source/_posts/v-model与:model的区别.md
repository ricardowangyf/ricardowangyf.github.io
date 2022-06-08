---
title: v-model与:model的区别
date: 2022.5.28
categories: Vue
tags: 
- Vue
---


### v-model与:model的区别


#### v-model

>通常用于表单上双向数据的绑定，如果除了表单其他组件使用时，起不到任何效果。它还可以实现子组件到父组件的双向数据动态绑定。
[详情参考官网](https://cn.vuejs.org/v2/guide/forms.html)


#### :model

>:model是v-bind:model的缩写。
只是将父组件的值传递给和子组件，但是并未实现子组件
和父组件之间的双向数据绑定，当然引用类型除外，子组件改变了引用类型的数据的话，父组件的数据也会跟着改变。