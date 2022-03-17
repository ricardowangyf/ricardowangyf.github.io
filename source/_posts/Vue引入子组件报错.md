---
title: Vue引入子组件报错
date: 2022.2.20
description: 
categories: Vue
tags:
- Vue
---

<link href="themes/prism.css" rel="stylesheet" />
<script src="prism.js" data-manual></script>

## Vue引入子组件报错

报错内容
```bash
module "/Users/wangyufei/git-project/Vue/example/demo14/src/components/child.vue"
Already included file name '/Users/wangyufei/git-project/Vue/example/demo14/src/components/child.vue' differs from file name '/Users/wangyufei/git-project/Vue/example/demo14/src/components/Child.vue' only in casing.
  The file is in th
```
具体显示:

![](https://s3.bmp.ovh/imgs/2022/02/b50ee4e1de288a70.jpg)

该错误的原因是(当然也可以不管，因为你会发现你的代码可以正常运行)：

vue名称相同，但是有大小写差异导致的

解决方法:

1、修改名称，使得引用的和文件名称大小写都对应起来

2、去掉vue后缀也能解决掉该问题