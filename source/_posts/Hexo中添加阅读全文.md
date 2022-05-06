---
title: Hexo中添加阅读全文
date: 2022.1.11
description: 
categories: Hexo
tags:
- Hexo
---


<!-- Hexo-设置阅读全文 -->
# Hexo-设置阅读全文

1 在文章内添加< !--more--> 手动进行截断
这种方法可以根据文章的内容，自己在合适的位置添加 < !--more--> 标签，使用灵活，也是Hexo推荐的方法。

![](https://s3.bmp.ovh/imgs/2022/01/3705da0533eedb16.jpg)

2 在文章内的front-matter中添加description，然后提供文章摘录
这种方式只会在首页列表中显示文章的摘要内容，进入文章详情后不会再显示。
![](https://s3.bmp.ovh/imgs/2022/01/69d1283c3ab16b30.jpg)

- **建议使用 < !– more –>（即第一种方式），除了可以精确控制需要显示的摘录内容以外， 这种方式也可以让 Hexo 中的插件更好的识别。** 

> 本文部分节选自    —— [简书](https://www.jianshu.com/p/78c218f9d1e7)