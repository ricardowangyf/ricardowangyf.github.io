---
title: React开发环境搭建
date:  2022.5.22
description:
categories:  React
tags:
- React
---

## 开发环境搭建

安装[node](https://nodejs.org/en/)

安装create-react-app, 一个全局的命令行工具，用于简化并创建一个新的 react 项目

```bash
npm install -g create-react-app
```

## 创建项目

```bash
create-react-app react-demo #创建项目


cd react-demo #进入到新的工程目录下
```

默认生成的项目框架
```bash
|-node_modules             #包管理
|-public             #一般用于存放静态文件，打包时会被直接复制到输出目录(./buidle)
|-src               #项目源代码
  |  |-asserts         #用于存放静态资源，打包时会经过 webpack 处理
  |  |-components    #组件 存放 React 组件，一般是该项目公用的无状态组件
  |  |-containers       #页面视图
  |  |-routes         #路由 存放需要 connect model 的路由组件
  |  |-App.js         #入口文件
  |  |-index         #注册路由与服务
  |  |- serviceWorker       #开发配置
|-package.json      #包管理代码
|-.gitignore # Git忽略文件
```

## 本地测试

```bash
npm run start #启动本地server用于开发
```

在浏览器中打开 localhost://8080 查看

### 项目打包

```bash
npm run build #命令执行后, 会在工程根目录下生成 build 目录
```