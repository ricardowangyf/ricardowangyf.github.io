---
title: Vue CLI 3 + element-ui 后台管理系统简单搭建
date: 2022.3.29
description:  
categories: Vue CLI 
tags:
- Element
- Vue CLI
- element-ui
---


#####  1.Vue CLI 3 安装启动

```bash
npm install -g @vue-cli
# OR
yarn global add @vue-cli
```

cd 你的项目名称 

#####  2.element-ui 安装

```bash
vue add element
```

会出现如下提示:

> How do you want to import Element? (Use arrow keys)

为了方便，选择第一个全局引用：fully import
```bash
Do you wish to overwrite Element's SCSS variables? Yes
Choose the locale you want to load zh-CN
```

启动

```bash
npm run serve
```