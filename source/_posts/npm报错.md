---
title: npm报错
date: 2022-6-10
description: 
categories:  npm
tags:
- npm
---

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