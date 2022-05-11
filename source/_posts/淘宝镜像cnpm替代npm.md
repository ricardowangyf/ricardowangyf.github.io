---
title: 淘宝镜像cnpm替代npm
date: 2022.3.14
description: 
tags:
- npm 
- cnpm
---
<!-- more -->


## 使用淘宝镜像cnpm代替npm

直接用 npm 安装库非常慢，容易安装失败，简直是浪费时间，使用代理或者库镜像又比较麻烦，最好的解决方案是使用淘宝镜像 cnpm替代npm 。

使用方法：

打开ITerm或者你的终端，输入以下命令来安装cnpm：
```bash
npm install -g cnpm --registry=https://registry.npm.taobao.org
```

2.显示完成后，使用cnpm替代npm ( 命令参数完全一样），例如安装Vue：
```bash
cnpm install -g @vue/cli
```