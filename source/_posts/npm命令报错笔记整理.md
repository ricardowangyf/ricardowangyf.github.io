---
title: npm命令报错笔记整理
date: 2022.3.28
categories:  npm
tags: 
- npm
---

# 2022.3月报错笔记整理
## 2022.3.28

### npm install下载依赖项时报错 fatal: unable to access ‘https://github.com/nhn/raphael.git/‘: Failed to connect

![](https://s3.bmp.ovh/imgs/2022/03/0ebf426d1653e68c.jpg)

解决方案：

1：查看一下自己的node版本，一般高版本下载会出问题，建议使用 12.17.0版本

2：网络延迟的问题，删除package.lock.json和node_modules文件夹,重新install
Node.js降级的方法我会写在另一篇[文章]()内。

### 2022-6-10
####   npm WARN Local package.json exists, but node_modules missing, did you mean to install?
```bash
npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! vuedatabase@1.0.0 dev: `webpack-dev-server --inline --progress --config build/
onf.js`
npm ERR! Exit status 1
npm ERR!
npm ERR! Failed at the vuedatabase@1.0.0 dev script.
npm ERR! This is probably not a problem with npm. There is likely additional logging ou
npm WARN Local package.json exists, but node_modules missing, did you mean to install?
```

cd到当前目录
```bash
npm install
```