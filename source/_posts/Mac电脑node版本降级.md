---
title: Node版本降级
date: 2022.3.28
categories: Nodejs
tags: 
- Nodejs
---

## Mac电脑Node版本降级

1.安装node版本管理模块
```bash
sudo npm install n -g
```

下边步骤请根据自己需要选择

1.安装稳定版
```bash
sudo n stable
```

2.安装最新版
```bash
sudo n latest
```

3.版本降级/升级
```bash
sudo n 版本号
#例如：sudo n 12.17.0
```