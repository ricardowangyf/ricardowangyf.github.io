---
title: Vue子组件当中data必须是函数
date: 2022.1.24
tags: 
- Vue
description: 
categories: 

---
<script src="prism.js"></script>
<link href="themes/prism.css" rel="stylesheet" />

<!-- more -->

## 为什么Vue子组件当中data必须是函数
### vue中data有四种写法 

第一种写法
```js
data() {
  return {
    msg: '',
    xxx: 'Hello CSDN'
  }
}
```

第二种写法
```JS
data:{
    msg:'',
    xxx: 'Hello,vue!'
}
```



如果在一个html文件中，使用`script:src`方式导入到vue当中并实现时，以上两种方法都行
但当你在使用本文件并且注册了一个组件之后，那么在这个组件当中的data必须是一个函数；如果你不是用函数，那么就会报错。举个例子：就像你在用v-for的时候非要引入一个key一样，这是文件规范。


原因如下：
* 使每个组件闭包
* 容易互相影响

说是两点其实还是一个原因，你能实例化出来的根组件就一个，你可以把其写成对象（object），或者你还可以写一个对象的函数，但是子组件的不够强大，非常容易在内存中的地址相互影响，举个例子，就像我们经常使用的深浅拷贝所能解决的。所以为了防止出现上述意外，就不能再子组件当中使用对象来写data