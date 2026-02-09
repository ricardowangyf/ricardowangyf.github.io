---
title: 安装vue项目
date: 2022.3.2
tags: 
- Vue
---
<link href="themes/prism.css" rel="stylesheet" />
<script src="prism.js" data-manual></script>


# 如何安装vue项目
[Vue CLI 官网](https://cli.vuejs.org/zh/guide/creating-a-project.html#vue-create)
## 2022/02/26

1. 检查 Vue 是否安装，如果输出 vue 的版本信息，说明安装了 vue

```bash
vue  -v
# @vue/cli 4.5.15
```

如果不存在 vue 命令工具，[安装 vue 命令](https://cli.vuejs.org/zh/guide/installation.html)
```bash
npm install -g @vue/cli
# OR
yarn global add @vue/cli
```

2. 通过 vue 命令，创建一个 `hello-world` 项目

```bash
vue create hello-world
```

选择 Vue 版本, 通过上下键选择 `Default ([Vue 2] babel, eslint)`

```bash
# Vue CLI v4.5.15
# ? Please pick a preset: (Use arrow keys)
# ❯ Default ([Vue 2] babel, eslint)
#   Default (Vue 3) ([Vue 3] babel, eslint)
#   Manually select features
```

选择安装，如果成功输出下面内容，如果失败，查看命令行信息，重新安装

```bash
# Vue CLI v4.5.15
# ✨  Creating project in /Users/wangyufei/git-project/FD/hello-world.
# 🗃  Initializing git repository...
# ⚙️  Installing CLI plugins. This might take a while...

# added 1280 packages in 39s

# 11 packages are looking for funding
#   run `npm fund` for details
# 🚀  Invoking generators...
# 📦  Installing additional dependencies...


# added 55 packages in 5s

# 11 packages are looking for funding
#   run `npm fund` for details
# ⚓  Running completion hooks...

# 📄  Generating README.md...

# 🎉  Successfully created project hello-world.
# 👉  Get started with the following commands:

#  $ cd hello-world
#  $ npm run serve
```

3. 进入生成的 `hello-world` 目录，通过 `npm run serve` 命令运行 vue 服务

```bash
cd hello-world
npm run serve
```