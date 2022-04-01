---
title: windows安装yarn
date: 2022.4.1
description:  
categories: Windows
tags:
- Windows
- Yarn
---


### 第一种安装方法

安装[yarn](https://yarn.bootcss.com/)

安装完成后，一定要记得配置环境变量

### 第二种安装方法

使用npm安装:
```bash
npm i yarn -g

-i：install 

-g：全局安装（global）,使用 -g 或 --global
```

输入yarn -version 可以看到版本号，说明安装成功了。我们就可以在项目中像使用npm一样使用yarn了。

常用命令
```bash
yarn / yarn install # 等同于npm install 批量安装依赖
yarn add xxx 等同于 # npm install xxx —save 安装指定包到指定位置
yarn remove xxx # 等同于 npm uninstall xxx —save 卸载指定包
yarn add xxx —dev # 等同于 npm install xxx —save-dev
yarn upgrade 等同于 # npm update 升级全部包
yarn global add xxx # 等同于 npm install xxx -g 全局安装指定包
```

使用yarn安装 create-react-app 工具
```bash
npm install -g create-react-app yarn```
```

<center>
    <img style="border-radius: 0.3125em;
    box-shadow: 0 2px 4px 0 rgba(34,36,38,.12),0 2px 10px 0 rgba(34,36,38,.08);" 
    src="https://s3.bmp.ovh/imgs/2022/04/01/ab216d7d9217343b.png" width = "65%" alt=""/>
    <br>
    <div style="color:orange; border-bottom: 1px solid #d9d9d9;
    display: inline-block;
    color: #999;
    padding: 2px;">
      npm安装脚手架
      </div>
</center>

<center>
    <img style="border-radius: 0.3125em;
    box-shadow: 0 2px 4px 0 rgba(34,36,38,.12),0 2px 10px 0 rgba(34,36,38,.08);" 
    src="https://i.bmp.ovh/imgs/2022/04/01/594ec247df4c71d4.png" width = "65%" alt=""/>
    <br>
    <div style="color:orange; border-bottom: 1px solid #d9d9d9;
    display: inline-block;
    color: #999;
    padding: 2px;">
      yarn安装脚手架
      </div>
</center>

然后新建一个项目。工具会自动初始化一个脚手架并安装Vue项目的各种必要依赖
```bash
create-vue-app vue-app
```

然后我们进入项目并启动。
```bash
cd react-app

yarn start
```

此时浏览器会访问 http://localhost:3000/ ，看到 Welcome to Vue 的界面就算成功了。

添加组件，如：
```bash
yarn add antd
```

### 如何卸载yarn

1.安装包直接软件卸载。

2.npm安装的则通过命令npm uninstall yarn -g卸载