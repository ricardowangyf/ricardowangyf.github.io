---
title: Vue引入css
date: 2022.4.30
description: 
categories:  Vue
tags:
- Vue
- css
---

## Vue引入css


vue引用css的方法

在vue中引入外部的css文件：

在项目的src文件下，新建一个style文件夹，存放css文件。

#### 全局引入

将外部的css文件放到style文件下，引入外部文件只需在main.js文件中
```bash
import './style/reset.css' 
# 清除默认样式的css文件
```

####  局部引入
```bash
<style scoped>
  @import '../assets/iconfont/iconfont.css'; #这个分号一定要写，要不会报错
</style>
```

`@import CSS@`规则，用于从其他样式表导入样式规则。这些规则必须先于所有其他类型的规则，@charset 规则除外; 因为它不是一个嵌套语句，@import不能在条件组的规则中使用。
因此，用户代理可以避免为不支持的媒体类型检索资源，作者可以指定依赖媒体的@import规则。这些条件导入在URI之后指定逗号分隔的媒体查询。在没有任何媒体查询的情况下，导入是无条件的。指定所有的媒体具有相同的效果。