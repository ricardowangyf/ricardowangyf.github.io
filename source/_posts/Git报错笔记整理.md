---
title: Git报错笔记整理
date: 2022.3.24
categories: 
tags: 
- Git
---

##  2022.3月报错笔记整理

### 2022.3.24 Git报错笔记

#### git总是出现untracked content怎么解决

在用git把本地代码同步至远端的时候出现了一个问题:
![](https://s3.bmp.ovh/imgs/2022/03/8e96c5f20e050c05.jpg)

报错原因:

该目录是从网上用git clone指令克隆下来的项目,原有的git数据和我本来的有冲突

cd到该目录之后用`ls -al`命令查看所有目录发现该项目下还有一个.git文件

用rm -rf .git删除之后就没有报错指令了