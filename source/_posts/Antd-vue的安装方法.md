---
title: Antd-vue的安装方法
date: 2022.3.14
description:  
categories: Antd-vue
tags:
- Antd-vue
---
<!-- more -->

##  1. Antd-vue的安装方法

[Antd-vue](https://www.antdv.com/docs/vue/introduce-cn/)
[Antd](https://ant.design/index-cn)


安装方法:

推荐使用npm或者yarn方法进行安装，在开发环境中可以轻松进行测试，也可以在生产环境打包部署使用，享受yarn和npm的生态圈和工具链带来的一些好处

npm安装方法:
```bash
npm install ant-design-vue --save
```

yarn安装方法:
```bash
yarn add ant-design-vue
```

建议使用[cnpm](https://github.com/cnpm/cnpm)来代替npm安装

### 示例

```bash
import Vue from 'vue';
import { DatePicker } from 'ant-design-vue';
Vue.use(DatePicker);
```

引入样式:
```bash
import 'ant-design-vue/dist/antd.css'; or 'ant-design-vue/dist/antd.less'
```

然后只需从 ant-design-vue 引入模块即可，无需单独引入样式。等同于下面手动引入的方式。

```bash
# babel-plugin-import 会帮助你加载 JS 和 CSS
import { DatePicker } from 'ant-design-vue';
```

手动引入

```bash
import DatePicker from 'ant-design-vue/lib/date-picker'; # 加载 JS
import 'ant-design-vue/lib/date-picker/style/css'; # 加载 CSS
# import 'ant-design-vue/lib/date-picker/style';   加载 LESS
```


## 2. 引入 ant-design-vue

### 安装脚手架工具

[vue-cli](https://github.com/vuejs/vue-cli)

```bash
npm install -g @vue/cli
# or 
yarn global add @vue/cli
```

### 创建一个项目

使用命令行进行项目初始化:
```bash
vue create antd-demo
```

### 使用组件
```bash
npm i --save ant-design-vue
```

完整引入
```bash
import Vue from 'vue';
import Antd from 'ant-design-vue';
import App from './App';
import 'ant-design-vue/dist/antd.css';
Vue.config.productionTip = false;

Vue.use(Antd);

# eslint-disable no-new
new Vue({
  el: '#app',
  components: { App },
  template: '<App/>',
});
```

在main.js文件输入以上代码就能完成Antd的引入，但需要注意的是，样式文件需要单独引入

#### 局部导入组件

```bash
import Vue from 'vue';
import { Button, message } from 'ant-design-vue';
import App from './App';

Vue.config.productionTip = false;

# v1.1.2 
Vue.component(Button.name, Button);
Vue.component(Button.Group.name, Button.Group);

# v1.1.3+ 自动注册Button下组件，如Button.Group 
Vue.use(Button);

Vue.prototype.$message = message;

# eslint-disable no-new 
new Vue({
  el: '#app',
  components: { App },
  template: '<App/>',
});
```

## 在 vue-cli 3 中使用
使用命令行安装vue-cli,你可能需要安装[yarn](https://yarn.bootcss.com/)

```bash
npm install -g @vue/cli
# or 
yarn global add @vue/cli
```

新建一个项目。
```bash
vue create antd-demo
```

并配置项目。

工具会自动初始化一个脚手架并安装 Vue 项目的各种必要依赖，如果在过程中出现网络问题，请尝试配置代理或使用其他 npm registry。

然后我们进入项目并启动:
```bash
cd antd-demo
npm run serve
```

### 引入Antd
这是 vue-cli 生成的默认目录结构。
```bash
├── README.md
├── babel.config
├── package.json
├── public
│   ├── favicon.ico
│   └── index.html
├── src
│   ├── assets
│   │   └── logo.png
│   ├── components
│   │   └── HelloWorld.vue
│   ├── App.vue
│   └── main.js
└── yarn.lock
```

现在从 yarn 或 npm 安装并引入 ant-design-vue。

```bash
yarn add ant-design-vue
```

修改 `src/main.js`，引入 antd 的按钮组件以及全部样式文件。
```js
import Vue from 'vue';
import Button from 'ant-design-vue/lib/button';
import 'ant-design-vue/dist/antd.css';
import App from './App';

Vue.component(Button.name, Button);

Vue.config.productionTip = false;

new Vue({
  render: h => h(App),
}).$mount('#app');
```

修改 `src/App.vue`的 template 内容。
```html
<template>
  <div id="app">
    <img src="./assets/logo.png">
    <a-button type="primary">Button></a-button>
  </div>
</template>
...
```