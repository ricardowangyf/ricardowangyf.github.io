---
title: 样式穿透::v-deep
date: 2022.4.25
categories: css 
tags:
- css
---

## 样式穿透::v-deep

在用到很多vue的组件库如[vant3](https://youzan.github.io/vant/#/zh-CN)，[Element-ui](https://element.eleme.cn/#/zh-CN),[，vuetify](https://vuetifyjs.com/en/)等，虽然配好了样式但是神奇的产品还是会让你改一下样式

一般情况可以直接在当前页面中写入样式：
```css
<style lang="scss" scoped>
  .v-text-field.v-text-field--enclosed .v-text-field__details {
		  margin-bottom: 8px;
		  padding: 0px !important; 
  }
</style>
```

这边需不需要加scoped要自行判断，有scoped限制的时候，实现组件的私有化，不对全局造成样式污染，表示当前style属性只属于当前模块。

但是知道我遇到了这种方法改不了公司的一个项目样式时，发现可以用`::v-deep`或者`/deep/`来解决，
注意，/deep/在vue 3.0会报错

使用方法如下：
```css
::v-deep .v-text-field.v-text-field--enclosed .v-text-field__details {
  margin-bottom: 8px;
  padding: 0px !important; 
}
```