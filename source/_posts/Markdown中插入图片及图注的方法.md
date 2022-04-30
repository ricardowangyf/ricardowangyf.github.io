---
title: Markdown插入图片及图注的方法
date: 2022-02-28
description: 
categories: 
tags:
- Markdown
---
<script src="prism.js"></script>
<link href="themes/prism.css" rel="stylesheet" />

## Markdown插入图片及图注的方法

### 一般方法

格式为：

```bash
![图片替换文字](图片地址)
```

这里不建议从剪贴板或本地直接粘贴到Markdown文档中，个人使用的是(ImgURL免费图床)[https://imgurl.org/]每天最多上传10张图片，单张图片不能超过5M，专业版198，如果你有钱就支持正版，没钱就暂时白嫖，或者选择其他的免费图床

下面是一些进阶操作。

### 插入图注，并调整尺寸
```bash
<center>
    <img style="border-radius: 0.3125em;
    box-shadow: 0 2px 4px 0 rgba(34,36,38,.12),0 2px 10px 0 rgba(34,36,38,.08);" 
    src="在这里插入图片地址" width = "65%" alt=""/>
    <br>
    <div style="color:orange; border-bottom: 1px solid #d9d9d9;
    display: inline-block;
    color: #999;
    padding: 2px;">
      在这里插入图片注释
  	</div>
</center>
```
其中`width = "65%"`可以将图片宽度（等比例）压缩为整页宽的65%。
图注部分在Typora中显示正常，但在CSDN中，图注与图片之间会有较大空隙（目前不知道如何解决）。
若要插入包含LaTeX的图注，注释部分改为下面的代码即可。
```bash
在这里插入图片注释
<img src="http://latex.codecogs.com/gif.latex? 在这里输入LaTeX公式">
```


### 并排插入两张图片


```bash
 <center>
    <img style="border-radius: 0.3125em;
    box-shadow: 0 2px 4px 0 rgba(34,36,38,.12),0 2px 10px 0 rgba(34,36,38,.08);" 
    src="在这里插入图片1地址" width = "30%" alt=""/>
    <img style="border-radius: 0.3125em;
    box-shadow: 0 2px 4px 0 rgba(34,36,38,.12),0 2px 10px 0 rgba(34,36,38,.08);" 
    src="在这里插入图片2地址" width = "30%" alt=""/>
    <br>
    <div style="color:orange; border-bottom: 1px solid #d9d9d9;
    display: inline-block;
    color: #999;
    padding: 2px;">
      在这里插入图片注释
  	</div>
</center>
```
