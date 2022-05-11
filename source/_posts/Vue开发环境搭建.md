---
title:   Vue开发环境搭建
date:  2022.4.1
description:
categories:  Vue
tags:
- Vue
---

一、安装node.js

[官网](https://nodejs.org/en/download/)       
[历史版本](https://nodejs.org/en/download/releases/)

![](https://s3.bmp.ovh/imgs/2022/04/01/71dd45c0ef3dd1b4.png)

下载完毕后，可以安装node，建议不要安装在系统盘（如C：）。

![](https://tva3.sinaimg.cn/large/0074R88yly8h0ued067t3j30h60df0tt.jpg)

![](https://tva4.sinaimg.cn/large/0074R88yly8h0uedm1vslj30h60df40i.jpg)

二、设置nodejs prefix（全局）和cache（缓存）路径

1.在nodejs安装路径下，新建node_global和node_cache两个文件夹

![](https://tva2.sinaimg.cn/large/0074R88yly8h0ueec77vrj30ha09fdh4.jpg)

2.设置缓存文件夹
```bash
npm config set cache "D:\vueProject\nodejs\node_cache"
```
设置全局模块存放路径
```bash
npm config set prefix "D:\vueProject\nodejs\node_global"
```
设置成功后，之后用命令npm install XXX -g安装以后模块就在D:\vueProject\nodejs\node_global里

三、基于 Node.js 安装cnpm（淘宝镜像）
```bash
npm install -g cnpm --registry=https://registry.npm.taobao.org
```

四、设置环境变量   **这非常非常非常重要！！！！！**
说明：设置环境变量可以使得住任意目录下都可以使用cnpm、vue等命令，而不需要输入全路径
1、鼠标右键"此电脑"，选择“属性”菜单，在弹出的“系统”对话框中左侧选择“高级系统设置”，弹出“系统属性”对话框。
2、修改系统变量PATH

![](https://tva3.sinaimg.cn/large/0074R88yly8h0ueg4o0ccj30hk0iijuc.jpg)

![](https://tva4.sinaimg.cn/large/0074R88yly8h0ueginkxlj30f10fu775.jpg)

3、新增系统变量NODE_PATH

![](https://tva1.sinaimg.cn/large/0074R88yly8h0ueh2kv90j30hd0i1zn0.jpg)

五、安装Vue
```bash
cnpm install vue -g
```
![](https://tva4.sinaimg.cn/large/0074R88yly8h0uehl6adgj30r403egm6.jpg)

六、安装vue命令行工具，即vue-cli 脚手架
```bash
cnpm install vue-cli -g
```

![](https://tva2.sinaimg.cn/large/0074R88yly8h0uei3t6joj30qt08x414.jpg)

七、新项目的创建
1.打开存放新建项目的文件夹
打开开始菜单，输入 CMD，或使用快捷键 win+R，输入 CMD，敲回车，弹出命令提示符。打开你将要新建的项目目录
![](https://tva4.sinaimg.cn/large/0074R88yly8h0ueincm5xj30br05ddg1.jpg)

2.根据模版创建新项目
在当前目录下输入“vue init webpack-simple 项目名称（使用英文）”。
```bash
vue init webpack-simple mytest
```
![](https://tva4.sinaimg.cn/large/0074R88yly8h0uejfeauij30na07cwfg.jpg)

初始化完成后的项目目录结构如下：
![](https://tva3.sinaimg.cn/large/0074R88yly8h0uejywhzcj30iq0bodhe.jpg)

![](https://tva4.sinaimg.cn/large/0074R88yly8h0uek95or5j30hh0bvmyu.jpg)

3、安装工程依赖模块

定位到mytest的工程目录下，安装该工程依赖的模块，这些模块将被安装在：mytest\node_module目录下，node_module文件夹会被新建，而且根据package.json的配置下载该项目的modules
```bash
cd mytest

cnpm install
```

4、运行该项目，测试一下该项目是否能够正常工作，这种方式是用nodejs来启动。
```bash
cnpm run dev
```

![](https://tva1.sinaimg.cn/large/0074R88yly8h0uel7t7n1j30nq09uq43.jpg)

![](https://tva3.sinaimg.cn/large/0074R88yly8h0uelmkmmdj30kt04omxa.jpg)

![](https://tva2.sinaimg.cn/large/0074R88yly8h0uelyd6rxj30mu0h4aat.jpg)