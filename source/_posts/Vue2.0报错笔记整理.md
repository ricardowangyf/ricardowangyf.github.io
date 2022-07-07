---
title: Vue2.0报错笔记整理
date: 2022.3.5
categories: Vue
tags: 
- Vue
---

<script src="prism.js"></script>
<link href="themes/prism.css" rel="stylesheet" />

##  2022.3月报错笔记整理

### 2022.3.5 Vue报错笔记

Vue-cli搭建好默认项目后，想要用路由功能，但是报错:

```bash
Can’t resolve ‘vue-router’ in xxxx(某路径)
```

这是因为缺少包的原因


你可以看一下你的package.json文件中是否安装了vue-router

![](https://s3.bmp.ovh/imgs/2022/03/f15617d9351db180.jpg)

运行命令
```bash
npm install vue-router@3
# 如果你的vue版本安装的是2.0，那么vue-router就要安装3.0版本
## 如果你的vue版本安装的是3.0，那么vue-router就要安装4.0版本
### 改变@后面的数字就行
```

安装成功后显示

![](https://s3.bmp.ovh/imgs/2022/03/b566dec104fa864e.jpg)


### 2022.3.6 Vue报错笔记

#### Component name "Vueabout" should always be multi-word


今天在跑Vue-router项目的时候碰到一个Bug

![](https://s3.bmp.ovh/imgs/2022/03/34dcc56415907b29.jpg)

开始排错的时候怎么都发现不了，到百度上到处搜索，后来用百度翻译翻译出来这句话的意思：

组件名称“Vueabout”应始终为多个字母

然后我看了一下我的代码块，果然是组件的命名问题
原来的代码：
```html
<script>
import HelloWorld from './components/HelloWorld.vue'
export default {
  name: 'App',
  components: {
    HelloWorld
  }
}
</script>
```

更改后的
```html
<script>
import HelloWorld from './components/HelloWorld.vue'
export default {
  name: 'AppNamne',
  components: {
    HelloWorld
  }
}
</script>
```

然后我们就发现不报错了：

![](https://s3.bmp.ovh/imgs/2022/03/1bb0726156ff5d5d.jpg)

页面也成功的运行了起来

![](https://s3.bmp.ovh/imgs/2022/03/fb345fc386e153db.jpg)


#### vue 运行时，报错： `> plan-vue@0.1.0 serve` 解决方式


出现此问题的原因：由于长时间没有运行项目导致项目缺少依赖项,如下图:

![](https://s3.bmp.ovh/imgs/2022/03/007f389abe802745.jpg)

解决方式：将项目中的node_modules和package-lock.json两个文件手动删除掉，然后在idea窗口中，执行npm install。重启idea即可。如下图:

![](https://s3.bmp.ovh/imgs/2022/03/312be75605b62bd5.jpg)

删除之后重新安装依赖包
```bash
npm install vue-router

npm install
```

安装完成之后可以进入`package.json`文件查看
![](https://s3.bmp.ovh/imgs/2022/03/1c4af49c72db06db.jpg)


最后重新npm run serve,就会发现运行成功，如下图:

![](https://s3.bmp.ovh/imgs/2022/03/7f94f589294090fe.jpg)


### 2022.3.7 Vue报错笔记

#### ＜div＞ has no matching end tag.

![](https://s3.bmp.ovh/imgs/2022/03/ccd14940d5422c5d.png)

div标签对应结束部分没加(/)


### 2022.3.8 Vue报错笔记

#### NavigationDuplicated: Avoided redundant navigation to current location: "h_son2".

在VUE中路由遇到Error: Avoided redundant navigation to current location:报错显示是路由重复

![](https://s3.bmp.ovh/imgs/2022/03/c9b7ddb5a384f4e5.jpg)

解决方法：router文件夹下面的index.js中加上下面几句代码:

```js
// 解决ElementUI导航栏中的vue-router在3.0版本以上重复点菜单报错问题
const originalPush = Router.prototype.push
Router.prototype.push = function push(location) {
  return originalPush.call(this, location).catch(err => err)
}
```


### 2022.3.13 Vue报错笔记

#### Parsing error: Identifier 'Button' has already been declared

安装Antd Vue的时候碰到一个bug，排查之后发现是引入错误

报错内容如下:

![](https://tva2.sinaimg.cn/large/0074R88yly8h0bnt93yotj30wu09wwho.jpg)

代码部分如下:

```js
  // src/main.js
  import Vue from 'vue'
  import Button from 'ant-design-vue/lib/button';
  import { Button } from 'ant-design-vue';
  import 'ant-design-vue/dist/antd.css'
  import App from './App'

  Vue.component(Button.name, Button)

  Vue.config.productionTip = false

  new Vue({
      render: h => h(App)
  }).$mount("#app");
  ```

只要删除重复引入的部分就行，删除代码：

```js
  // src/main.js
  import Vue from 'vue'
  import { Button } from 'ant-design-vue';
  import 'ant-design-vue/dist/antd.css'
  import App from './App'

  Vue.component(Button.name, Button)

  Vue.config.productionTip = false

  new Vue({
      render: h => h(App)
  }).$mount("#app");
  ```

  删除了重复引入的部分，这样代码就不会报错了:

  ![](https://s3.bmp.ovh/imgs/2022/03/cbe870a6132c0edf.jpg)


  ### 2022.3.16 Vue报错笔记

  ####  Maximum call stack size exceeded

  在学习vuerouter的时候想把所有编写的实例放在一个页面中展示，打开Google浏览器调试 工具的时候碰到如下错误:

  ![](https://s3.bmp.ovh/imgs/2022/03/013a9b93be2bfe59.png)


  百度翻译过来的内容是:

  超出了最大调用堆栈大小

  仔细检查页面后发现

  ```html
  <template>
  <div>
    <hr />
    <HistoryApp></HistoryApp>
    <hr />
    <App></App>
    <hr />
  </div>
</template>
<script>
import HistoryApp from "./components/history/HistoryApp.vue";
import App from "./components/App.vue";

export default {
  name:'HistoryApp',
  components: {
    HistoryApp,
    App,
  },
};
</script>
<style scoped>
hr {
  border: 1px solid red;
}
div{
  text-align: center;
}
</style>
```

发现页面引用了一个组件 和页面的`name`重复。所以进入页面的时候，一直都在死循环。

修改如下
```html
<template>
  <div>
    <hr />
    <HistoryApp></HistoryApp>
    <hr />
    <App></App>
    <hr />
  </div>
</template>
<script>
import HistoryApp from "./components/history/HistoryApp.vue";
import App from "./components/App.vue";

export default {
  component: {
    HistoryApp,
    App,
  },
};
</script>
<style scoped>
hr {
  border: 1px solid red;
}
div{
  text-align: center;
}
</style>
```

### 2022.3.18 Vue报错笔记

#### <BarApp> - did you register the component correctly? For recursive components, make sure to provide the "name" option.

今天学习vue-router的时候碰到一个bug，浏览器报错如下：

![](https://s3.bmp.ovh/imgs/2022/03/142b3a8aad79caf1.jpg)

**重点**

**其实是我的components单词写错了**

我以为又是什么很难的问题，结果就是一个少写一个字母的问题  = - =  哭死

修改之后如下图:

![](https://s3.bmp.ovh/imgs/2022/03/bdceb5101f4493a4.jpg)


### 2022.3.19 Vue报错笔记
#### Route with name '/Login' does not exist

今天学习vue-router内容中的重定向碰到一个bug，浏览器报错如下：

![](https://s3.bmp.ovh/imgs/2022/03/cd715bd2980f84aa.jpg)

路由地址不存在
找到路由配置文件router.js

解决方法:

```bash
{
	path: '/home',
	name: 'home',
	component: home,
}

```

### 2022.3.23  Vue2.0报错笔记

#### You are using the runtime-only build of Vue where the template compiler is not available. Either pre-compile the templates into render functions, or use the compiler-included build.

今天写vue路由项目碰到一个bug，浏览器报错如下：
![](https://s3.bmp.ovh/imgs/2022/03/9976d3b3e49aceea.jpg)

报错原因:

vue有两种形式的代码 compiler（模板）模式和runtime模式（运行时）vue模块的package.json的main字段默认为runtime模式， 指向了"dist/vue.runtime.common.js"位置。

这是我main.js文件中初始化的vue块，这种形式为compiler模式，所以就会出现如上的错误信息

```js
// compiler
new Vue({
  el: '#app',
  router: router,
  store: store,
  template: '<App/>',
  components: { App }
})
```

解决办法


main.js中修改成如下格式就行:
```js
//runtime
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount("#app")
```

### 2022.3.26  Vue2.0报错笔记

#### Non-nested routes must include a leading slash character. Fix the following routes

出错点
Non-nested routes must include a leading slash character. Fix the following routes:
非嵌套路由必须包含前导斜杠字符

![](https://s3.bmp.ovh/imgs/2022/03/de90c863bf7c9b7b.png)


## 2022.4.6  Vue2.0报错笔记

### openUrl is not defined

报错如图：
![](https://i.bmp.ovh/imgs/2022/04/06/a5d494e06d4dcf85.jpg)

代码部分如下:

```html
<template>
  <div>
    <button onclick="openUrl();">Click here</button>

    <a href="https://www.zhihu.com/" target="_blank"
      ><button>Click here</button></a
    >
  </div>
</template>
<script type="text/javascript">
function openUrl() {
  var url = "https://www.zhihu.com/";
  window.open(url); //新窗口打开
  window.location.href = url; //当前窗口打开
}
</script>
```
解决方案:

用一个全局变量去定义onclick的点击函数就好了。
```js
openUrl = function (id){
}
```

## 2022.4.11  Vue2.0报错笔记

### can't resolve 'sass-loader'

![](https://i.bmp.ovh/imgs/2022/04/11/985859e7dfef7855.png)

翻一下来原因是什么 sass-loader 这个玩意儿不能编译

搜索解决原因，安装依赖:
```bash
npm install sass-loader
```

```bash
npm install node-sass
```

安装完成之后，npm run serve ok终于不报错了，nice！


#### 2022.7.7 Vue2.0报错笔记
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