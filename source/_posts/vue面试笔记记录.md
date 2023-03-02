---
title: 前端面试笔记记录
date: 2023.3.2
description: 
categories:  Vue
tags:
- Vue
---

# 前端面试题记录

## Vue面试题记录

### 生命周期

#### vue生命周期是什么
Vue 实例从创建到销毁的过程为生命周期。从开始创建、初始化数据、编译模板、挂载Dom→渲染、更新→渲染、卸载等一系列过程，称之为 Vue 的生命周期。

#### vue生命周期总共有几个阶段
创建前/后, 载入前/后,更新前/后,销毁前/销毁后

#### 简述每个周期具体适合哪些场景
beforeCreate：在new一个vue实例后，只有一些默认的生命周期钩子和默认事件，其他的东西都还没创建。在beforeCreate生命周期执行的时候，data和methods中的数据都还没有初始化。不能在这个阶段使用data中的数据和methods中的方法

created：data 和 methods都已经被初始化好了，如果要调用 methods 中的方法，或者操作 data 中的数据，最早可以在这个阶段中操作

beforeMount：执行到这个钩子的时候，在内存中已经编译好了模板了，但是还没有挂载到页面中，此时，页面还是旧的

mounted：执行到这个钩子的时候，就表示Vue实例已经初始化完成了。此时组件脱离了创建阶段，进入到了运行阶段。 如果我们想要通过插件操作页面上的DOM节点，最早可以在和这个阶段中进行

beforeUpdate： 当执行这个钩子时，页面中的显示的数据还是旧的，data中的数据是更新后的， 页面还没有和最新的数据保持同步

updated：页面显示的数据和data中的数据已经保持同步了，都是最新的

beforeDestory：Vue实例从运行阶段进入到了销毁阶段，这个时候上所有的 data 和 methods ， 指令， 过滤器 ……都是处于可用状态。还没有真正被销毁

destroyed： 这个时候上所有的 data 和 methods ， 指令， 过滤器 ……都是处于不可用状态。组件已经被销毁了。

#### 第一次页面加载会触发哪几个钩子？
beforeCreate, created, beforeMount, mounted 


### 组件传值的几种类型

* 父组件给子组件传值
* 子组件给父组件传值
* 非父子组件传值(任意组件之间传值)

#### 父组件给子组件传值
* 父组件中通过 import - components - < /> 三部曲 注册子组件
* 子组件在 props 对象中创建一个属性 prop
* 父组件在注册的子组件标签中添加 prop 属性，即 prop=“value”
* 父组件可以通过 v-bind:prop（:prop）实现数据双向绑定
> 以下是具体实例


```html
<!-- 父组件 -->
<template>
  <div>
    <child-component @myEvent="handleEvent"></child-component>
    <p>从子组件接收到的值：{{ receivedValue }}</p>
  </div>
</template>

<script>
import ChildComponent from '@/components/ChildComponent.vue'

export default {
  components: {
    ChildComponent
  },
  data() {
    return {
      receivedValue: ''
    }
  },
  methods: {
    handleEvent(value) {
      this.receivedValue = value
    }
  }
}
</script>
```


```html
<!-- 子组件 -->
<template>
  <div>
    <button @click="emitValue">传值给父组件</button>
  </div>
</template>

<script>
export default {
  methods: {
    emitValue() {
      this.$emit('myEvent', '这是子组件传递给父组件的值')
    }
  }
}
</script>
```

#### 子组件给父组件传值

* 子组件中需要以某种方式的方法来触发一个自定义事件（例如点击事件）
* 子组件使用 this.$emit 方法，第一个参数为父组件定义的方法名称 event，第二个参数为传递的值
* 在父组件中注册子组件并在子组件标签上绑定对自定义事件的监听（event=“Event”），Event(data) 可以接收传过来的参数
> 以下是具体实例

```html
<!-- 子组件 -->
<template>
  <div>
    <button @click="emitValue">传值给父组件</button>
  </div>
</template>

<script>
export default {
  methods: {
    emitValue() {
      this.$emit('myEvent', '这是子组件传递给父组件的值')
    }
  }
}
</script>
```
子组件定义了一个按钮，当按钮被点击时，sendData方法会被调用，它通过this.$emit方法触发了一个自定义事件child-event，并传递了一个字符串值作为参数。


```html
<!-- 父组件 -->
<template>
  <div>
    <child-component @myEvent="handleEvent"></child-component>
    <p>从子组件接收到的值：{{ receivedValue }}</p>
  </div>
</template>

<script>
import ChildComponent from '@/components/ChildComponent.vue'

export default {
  components: {
    ChildComponent
  },
  data() {
    return {
      receivedValue: ''
    }
  },
  methods: {
    handleEvent(value) {
      this.receivedValue = value
    }
  }
}
</script>
```

父组件通过import引入了子组件，然后在模板中使用`<child-component>`标签将子组件添加到父组件中。在子组件上，我们监听了myEvent事件，并在触发事件时调用了handleEvent方法。handleEvent方法将接收到的值设置为receivedValue，然后在模板中显示出来。

#### 兄弟组件之间的传参

EventBus 是中央事件总线，不管是父子组件，兄弟组件，跨层级组件等都可以使用它完成通信操作
兄click设置点击事件，用$emit设置通道传参给中转站，弟通过 $on接收来自中转站的参数

#### 任意组件之间的通信
任意关系的组件之间的传参可以通过 vue-router 来完成


### vue路由传参的三种方式

#### params传参(显示参数)

params传参(显示参数)又可分为`声明式`和`编程式`两种方式

>声明式router-link

该方式是通过`router-link`组件的`to`属性实现,该方法的参数可以是一个字符串路径,或者一个描述地址的对象。使用该方式传值的时候,需要子路由提前配置好参数,例如：


```js
// router/index.js
{
  path: '/child/:id',
  component: Child
}

// src/compants/father.vue
<router-link :to="/child/123">进入Child路由</router-link>
```

>编程式 this.$router.push

使用该方式传值的时候，同样需要子路由提前配置好参数,如下实例:
```js
// router/index.js
{
  path: '/child/:id',
  component: Child
}
//父路由编程式传参(通过Onclick点击事件触发)
this.$router.push({
    path:'/child/${id}',
})
```

子路由中可以通过下面代码来获取传递的参数值
```js
this.$route.params.id
```


#### 编程式 this.$router.push
使用该方式传值的时候，同样需要子路由提前配置好参数，不过不能再使用 :/id 来传递参数了，因为父路由中，已经使用 params 来携带参数了，例如:
```js
// router/index.js
{
  path: '/child,
  name: 'Child',
  component: Child
}
//父路由编程式传参(通过Onclick点击事件触发)
this.$router.push({
    name:'Child',
    params:{
    	id:123
    }
})
```
子路由中可以通过下面代码来获取传递的参数值
```js
this.$route.params.id
```


#### query传参
query 传参（显示参数）也可分为 声明式 和 编程式 两种方式
>声明式 router-link

该方式也是通过 `router-link` 组件的`to`属性实现，不过使用该方式传值的时候，需要子路由提前配置好路由别名（name 属性），例如：
```js
// router/index.js
{
  path: '/child,
  name: 'Child',
  component: Child
}
//父路由组件
<router-link :to="{name:'Child',query:{id:123}}">进入Child路由</router-link>
```

>编程式 this.$router.push

使用该方式传值的时候，同样需要子路由提前配置好路由别名（name 属性），例如：

```js
// router/index.js
{
  path: '/child,
  name: 'Child',
  component: Child
}
//父路由编程式传参(一般通过事件触发)
this.$router.push({
    name:'Child',
    query:{
    	id:123
    }
})
```

子路由中可以通过下面代码来获取传递的参数值
```js
this.$route.query.id
```




## JS面试记录

###  JS==以及===区别   在什么情况下使用

`==`和`===`都是用于比较两个值是否相等的JS运算符，它们之间的主要区别在于它们的比较方式和类型转换。

`==`比较两个值是否相等时，会进行类型转换。如果两个值的数据类型不同，JS会尝试将它们转换为相同的类型，然后再进行比较。这种类型转换可能会产生一些意想不到的结果，例如：

```js
console.log(1 == '1'); // true
console.log(true == 1); // true
console.log(null == undefined); // true
```

`===`比较两个值是否相等时，不会进行类型转换。只有当两个值的类型相同且值相等时，才会返回true，否则返回false。这种比较方式更为严格和安全，因为它可以避免类型转换带来的问题。

在一般情况下，建议使用`===`运算符进行比较。只有在确实需要进行类型转换时，才使用`==`运算符。例如，在比较两个值是否为null或undefined时，使用==比较更为方便：
```js
if (value == null) {
  // 这里会同时匹配 null 和 undefined
}
```
需要注意的是，使用`==`比较时，要注意避免类型转换带来的意想不到的结果。如果不确定类型转换的结果，可以使用`===`进行比较，或者先显式地将值转换为相应的类型，再进行比较。例如：
```js
console.log(Number('1') == 1); // true
console.log(Number('foo') == NaN); // false，NaN 不等于任何值，包括它本身
console.log(String(1) === '1'); // true
```


### typeof 与 instanceof 区别

`typeof`和`instanceof`操作符都是用来判断数据类型的 但使用场景却各不相同。

#### typeof
typeof运算符返回一个字符串，表示操作数的类型
```js
typeof operand
typeof(operand)
```
operand表示要返回类型的对象或基本类型的表达式
```js
typeof 666 // 'number'
typeof '666' // 'string'
typeof undefined // 'undefined'
typeof true // 'boolean'
typeof Symbol() // 'symbol'
typeof null // 'object'
typeof [] // 'object'
typeof {} // 'object'
```
typeof可以精准的判断基本数据类型（null）除外

#### instanceof

`instanceof` 运算符用于检测构造函数的` prototype `属性是否出现在某个实例对象的原型链上
使用方法如下

```js
object instanceof constructor
```
object 是指某个实例对象
constructor是指某个构造函数

```js
// 定义构造函数
function C(){}
function D(){}

var o = new C();

o instanceof C; // true，因为 Object.getPrototypeOf(o) === C.prototype
o instanceof D; // false，因为 D.prototype 不在 o 的原型链上

o instanceof Object; // true，因为 Object.prototype.isPrototypeOf(o) 返回 true
C.prototype instanceof Object // true，同上

C.prototype = {};
var o2 = new C();

o2 instanceof C; // true

o instanceof C; // false，C.prototype 指向了一个空对象，这个空对象不在 o 的原型链上。

D.prototype = new C(); // 继承
var o3 = new D();
o3 instanceof D; // true
o3 instanceof C; // true 因为 C.prototype 现在在 o3 的原型链上
```


#### 区别
typeof与instanceof 都是判断数据类型的方法，区别如下：

* typeof会返回一个运算数的基本类型，instanceof 返回的是布尔值
* instanceof 可以准确判断引用数据类型，但是不能正确判断原始数据类型
* typeof虽然可以判断原始数据类型（null 除外），但是无法判断引用数据类型（function 除外）


###  eval是做什么的？
 非严格模式，可以将json字符串转换为对象的形式。也可将字符串参数转化为脚本代码执行，但只适合在非严格模式下。它的功能是将对应的字符串解析成js并执行，应该避免使用js，因为非常消耗性能（2次，一次解析成js，一次执行），简单来说将字符串参数解析成js代码并执行，并返回执行结果。但应避免使用，不安全，也耗性能。


