---
title: git add后撤销
date: 2022-02-28
description: 
categories: git
tags:
- git
---


## 如何撤销git add操作 ##
使用Git的时候，有时候不小心使用git add，添加了不想追踪的文件。也就是track了一些不想track的文件，这个时候需要撤销操作，我们来看看应该如何操作

![](https://s3.bmp.ovh/imgs/2022/02/40f8615fa0e6951a.jpg)

1.使用git reset命令

<center>
    <img src = 'https://s3.bmp.ovh/imgs/2022/02/da5a701fdddad4e4.jpg' />
    <br>
    <div style="color:orange; border-bottom: 1px solid #d9d9d9;
    display: inline-block;
    color: #999;
    padding: 2px;">
      git reset命令效果
  	</div>
</center>

2.使用git rm --cached [filename]命令

