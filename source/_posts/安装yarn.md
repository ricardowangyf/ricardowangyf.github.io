---
title: 安装yarn
date: 2022.3.12
description:  000
categories: yarn
tags:
- yarn
---
[yarn中文文档](https://yarn.bootcss.com/)
[yarn英文文档](https://yarnpkg.com/)


### 前言

最近在学习引入Antd vue需要使用yarn来安装相关的依赖包，其实以前在学习其他东西的时候碰到过，但是当时没有做笔记，现在等于是补上了。

接下来说说在Mac上安装yarn的几种方法。

## 1.使用homebrew 安装

```bash
brew install yarn
```

在长久的等待和报错之后，终于安装成功了，建议一定要在良好的网络环境下安装

![](https://s3.bmp.ovh/imgs/2022/03/89493cf54284d2e8.jpg)

查看yarn的版本

![](https://s3.bmp.ovh/imgs/2022/03/a366c8a55242cb07.jpg)

ok这就是第一种安装方法

## 2.脚本安装

```bash
curl -o- -L https://yarnpkg.com/install.sh | bash
```

同样在长久的等待下，安装成功:

![](https://s3.bmp.ovh/imgs/2022/03/20e4bc256ee165e7.jpg)

继续查看版本号

![](https://s3.bmp.ovh/imgs/2022/03/e741f86ad8f1dcd1.jpg)

ok，上面两种方法都可以使用，建议要在良好的网络环境下安装。