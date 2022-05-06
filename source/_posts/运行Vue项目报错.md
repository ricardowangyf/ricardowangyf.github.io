---
title: 运行Vue项目报错
date: 2022.3.22
categories: Vue
tags: 
- Vue
---
<link href="themes/prism.css" rel="stylesheet" />
<script src="prism.js" data-manual></script>

## mac环境下运行vue项目报错sh: vue-cli-service: command not found

报错如图:

![](https://s3.bmp.ovh/imgs/2022/03/e912617b33e4c0ef.jpg)

解决方案:
cd到项目目录下，执行命令
```bash
sudo rm -rf node_modules package-lock.json

npm install
```
然后根据提示输入密码。安装完成后，再次npm run dev就可以正常运行啦。