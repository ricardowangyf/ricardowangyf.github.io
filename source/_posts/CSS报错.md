---
title: CSS报错
date: 2022.7.7
categories: CSS
tags: 
- CSS
---

### CSS报错

#### Deprecation Warning: Using / for division outside of calc() is deprecated and will be removed in Dar

今天跑vue项目的碰到一个bug，具体内容如下图：

![](https://s3.bmp.ovh/imgs/2022/07/07/1836d0fa3f411e8d.jpg)

原因是 sass新版本目前弃用“/”的用法，sass自定义element theme时会报warnning

解决方案：

1:npm install -g sass-migrator

2：进入项目node_modules文件

3：执行sass-migrator division **/*.scss