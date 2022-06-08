---
title: git报错笔记
date: 2022.3.24
categories: git
tags: 
- git
---

###  git报错笔记
#### git总是出现untracked content怎么解决

在用git把本地代码同步至远端的时候出现了一个问题:
```bash
admin:ios-hybird-flutter Red$ git add .
admin:ios-hybird-flutter Red$ git st
On branch master
Your branch is up to date with 'origin/master'.
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
    new file:   FlutterBoostDemo/.gitignore
    new file:   FlutterBoostDemo/.metadata
    new file:   FlutterBoostDemo/FlutterBoostDemo.iml
    new file:   FlutterBoostDemo/FlutterBoostDemo_android.iml
    new file:   FlutterBoostDemo/README.md
    new file:   FlutterBoostDemo/lib/FirstPage.dart
    new file:   FlutterBoostDemo/lib/main.dart
    new file:   FlutterBoostDemo/pubspec.lock
    new file:   FlutterBoostDemo/pubspec.yaml
    new file:   FlutterBoostDemo/test/widget_test.dart
    new file:   SwiftDemo
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  (commit or discard the untracked or modified content in submodules)
  modified:   SwiftDemo (modified content, untracked content)
```

报错原因:

该目录是从网上用git clone指令克隆下来的项目,原有的git数据和我本来的有冲突

cd到该目录之后用`ls -al`命令查看所有目录发现该项目下还有一个.git文件

用rm -rf .git删除之后就没有报错指令了