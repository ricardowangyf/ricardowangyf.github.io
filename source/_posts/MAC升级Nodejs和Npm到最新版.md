---
title: MAC升级Nodejs和Npm到最新版
date: 2022.5.22
categories:  npm
tags: 
- npm
---


###  Mac升级Node.js和Npm到最新版

1:  先查看本机node.js版本:
```bash
node -v
```

2:  清除node.js的cache:
```bash 
sudo npm cache clean -f
```

3:  安装`n工具`，这个工具是专门用来管理node:
```bash
sudo npm install -g n
```

4:  安装最新版本的node.js: 
```bash
sudo n stable
```

5:  再次查看本机的node.js版本:
```bash
node -v
```

6:  更新npm到最新版:
```bash
sudo npm install npm@latest -g
```  

最后一步，验证：
```bash
node -v
#v16.15.0

npm -v
#8.10.0
```

>转载自: [博客园](https://www.cnblogs.com/ae6623/p/6242423.html)