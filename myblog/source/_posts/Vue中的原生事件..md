---
title: Vue中的原生事件
date: 2022.2.23
description: 
categories: Vue
tags:
- Vue
---
<script src="prism.js"></script>
<link href="themes/prism.css" rel="stylesheet" />

## Vue中的原生事件 ##
```bash
<router-link :to="path" @click.native="''"></router-link>
```
在router-link中必须加入native,click事件才能生效，否则，router-link会阻止click事件，而a标签不会阻止。

可以这么认为，native就是一个把组件变回原生DOM的一种方法，给vue组件绑定事件的时候，一定要加上native，如果是普通元素就不需要