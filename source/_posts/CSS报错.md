---
title: CSS报错
date: 2022.7.7
categories: CSS
tags: 
- CSS
---

### CSS报错

#### 2022.7.7
##### Deprecation Warning: Using / for division outside of calc() is deprecated and will be removed in Dar

今天跑vue项目的碰到一个bug，具体内容如下图：

![](https://s3.bmp.ovh/imgs/2022/07/07/1836d0fa3f411e8d.jpg)

原因是 sass新版本目前弃用“/”的用法，sass自定义element theme时会报warnning

解决方案：

1:npm install -g sass-migrator

2：进入项目node_modules文件

3：执行sass-migrator division **/*.scss

##### Can't resolve 'less-loader'

原因分析，文件中的style用了less，而项目中未安装less：

```bash
<style lang="less" scoped>

</style>
```

解决方法：

打开项目文件夹，终端命令：

```bash
npm install --save-dev less-loader less
```

如果不想用less，可以将`lang='less'`删除