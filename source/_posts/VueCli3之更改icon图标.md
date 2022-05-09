---
title: VueCli3更改icon图标
date: 2022.4.30
description: 
categories:  Vue
tags:
- Vue
---

## VueCli3更改icon图标

>初次使用更改icon图标的时候，可能会根据脚手架搭建完成后的public中修改index.html中的link,如下
```bash
<link rel="icon" href="<%= BASE_URL %>assets/logo/logo.png">
```
但是，会发现即使修改了之后，重新刷新也没有任何作用。

那么接下来我来讲一下搜索到的解决方法。
一、先将自己的icon直接替换原的图标
二、在根目录创建一个`vue.config.js`文件，然后写下之前
```js
module.exports = {
    pwa: {
        iconPaths: {
            favicon32: 'favicon.ico',
            favicon16: 'favicon.ico',
            appleTouchIcon: 'favicon.ico',
            maskIcon: 'favicon.ico',
            msTileImage: 'favicon.ico'
        }
    }
}
```

记得修改完成之后需要重启项目，这样图标才会生效。