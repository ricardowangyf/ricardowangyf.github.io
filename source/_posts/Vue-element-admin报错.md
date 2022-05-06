---
title: Vue-element-admin报错
date: 2022.3.29
description:  
categories:  Vue
tags:
- Element
- Vue
---


## Added non-passive event listener to a scroll-blocking 'mousewheel' event.警告
今天跑vue-element-admin的时候打开Chrome浏览器调试报错如下

Chrome 提醒：[Violation] Added non-passive event listener to a scroll-blocking ‘mousewheel’ event. Consider marking event handler as ‘passive’ to make the page more responsive.


原因：[详情](https://www.cnblogs.com/PopularProdigal/p/8005783.html)

Chrome51 版本以后，Chrome 增加了新的事件捕获机制－Passive Event Listeners。
Passive Event Listeners：就是告诉前页面内的事件监听器内部是否会调用preventDefault函数来阻止事件的默认行为，以便浏览器根据这个信息更好地做出决策来优化页面性能。当属性passive的值为true的时候，代表该监听器内部不会调用preventDefault函数来阻止默认滑动行为，Chrome浏览器称这类型的监听器为被动（passive）监听器。目前Chrome主要利用该特性来优化页面的滑动性能，所以Passive Event Listeners特性当前仅支持mousewheel/touch相关事件。

解决方案:
```bash
npm i default-passive-events -S
main.js中加入：import 'default-passive-events'
```