---
title: Chrome报错
date: 2022.3.30
categories: Chrome
tags: 
- Chrome
---

### Chrome访问出现： Slow network is detected.

Chrome报错:Slow network is detected. See https://www.chromestatus.com/feature/563695467

百度一下 给出的解释是：

This means the network is slow, and Chrome is replacing a web font (loaded with a @font-face rule) with a local fallback.

By default, the text rendered with a web font is invisible until the font is downloaded (“[flash of invisible text](https://link.csdn.net/?target=https%3A%2F%2Fcss-tricks.com%2Ffout-foit-foft%2F)”). With this change, the user on a slow network could start reading right when the content is loaded instead of looking into the empty page for several seconds.

（这意味着网络速度很慢，Chrome正在用本地回退替换网络字体（加载@ font-face规则）。

默认情况下，使用Web字体呈现的文本在下载字体之前是不可见的（“不可见文本的闪烁”）。 通过此更改，慢速网络上的用户可以在加载内容时开始正确读取，而不是在几秒钟内查看空白页面。）

解决方法:

地址栏输入`chrome://flags/#enable-webfonts-intervention-v2`，并设置为`Disabled`；重启Chrome。

