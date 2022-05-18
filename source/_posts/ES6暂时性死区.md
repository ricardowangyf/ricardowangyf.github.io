---
title: ES6暂时性死区
date: 2022.4.28
categories: JavaScript
tags: 
- ES6
- JavaScript
---

##  ES6暂时性死区

>暂时性死区是针对`const`,`let`这两个关键字而产生的概念。
首先变量提升这个js的基本概念无法撼动，`const`和`let`作为块级作用域也不能避免。
和`var`不同，这两个关键字将作用域限制在了`块`中，且规定了在该块中，由这两个关键字定义的变量已经被分配内存。
即其实已经`存在`了，但程序未执行到声明处时，访问该变量都会报引用错误。
这个时候，对于该变量来说就是'暂时性死区'，通俗来说就是该变量存在，但并未完全存在

代码如下：
```js
//情景一、
if (true) {
  // TDZ开始
  tmp = 'abc'; // ReferenceError
  console.log(tmp); // ReferenceError

  let tmp; // TDZ结束
  console.log(tmp); // undefined

  tmp = 123;
  console.log(tmp); // 123
}
```

上面代码中，在let命令声明变量tmp之前，都属于变量tmp的“死区”。

```js
//情景二
var tmp = 123;
if (true) {
  tmp = 'abc'; // ReferenceError
  let tmp;
}
```