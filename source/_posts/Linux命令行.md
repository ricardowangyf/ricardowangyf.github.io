---
title: Linux命令行
date: 2022.1.10
description:  
categories: 
tags:
- Linux
---
<!-- more -->
<link href="themes/prism.css" rel="stylesheet" />
<script src="prism.js" data-manual></script>

# touch 命令: 创建新的空文件
1: 用于把已存在文件的时间标签更新为系统当前的时间（默认方式）它们的数据将原封不动地保留下来
2: 是用来创建新的空文件。
## 语法 

touch(选项)(参数)

## 实例

```bash
touch ex2
```
————————————————————————————-———————————
# rm 命令

用于删除给定的文件和目录

## 语法

rm (选项)(参数)

* `rm -i test example`
* `Remove test ?n（不删除文件test)`
* `Remove example ?y（删除文件example)`
##  不同的选项

* -d：直接把欲删除的目录的硬连接数据删除成0，删除该目录；
* -f：强制删除文件或目录；
* -i：删除已有文件或目录之前先询问用户；
* -r或-R：递归处理，将指定目录下的所有文件与子目录一并处理；
* --preserve-root：不对根目录进行递归操作；
* -v：显示指令的详细执行过程。

————————————————————————————-———————————
# cd 命令: 切换用户当前工作目录。

## 主要用途
* 切换工作目录至`dir`。其中`dir`的表示法可以是绝对路径或相对路径。
* 要是参数`dir`省略，那就会默认为使用者的shell变量`HOME`。
* 如果`dir`指定为`~`时表示为使用者的shell变量`HOME`，`.`表示当前目录，`..`表示当前目录的上一级目录。
* 环境变量`CDPATH`是由冒号分割的一到多个目录，你可以将常去的目录的上一级加入到`CDPATH`以便方便访问它们；如果`dir`以`/`开头那么`CDPATH`不会被使用。
* 当`shopt`选项`cdable_vars`打开时，如果`dir`在`CDPATH`及当前目录下均不存在，那么会把它当作变量，读取它的值作为要进入的目录。

## 例子

```bash
cd    # 进入用户主目录；
cd /  # 进入根目录
cd ~  # 进入用户主目录；
cd ..  # 返回上级目录（若当前目录为“/“，则执行完后还在“/"；".."为上级目录的意思）；
cd ../..  # 返回上两级目录；
cd !$  # 把上个命令的参数作为cd参数使用。
```

#### 关于切换到上一个工作目录的说明

```bash
cd -
# 命令会首先显示要切换到的目标目录，然后再进入。
cd ${OLDPWD}
# 命令会直接切换到上一个工作目录。
```

#### 关于`CDPATH`
```bash
# 设置桌面文件夹作为CDPATH的值。
CDPATH='~/Desktop'
# 假设我们接下来要演示涉及到的路径~和~/Desktop下没有test3文件夹，现在新建它们。
mkdir ~/test3
mkdir ~/Desktop/test3
# 进入~目录。
cd ~
# 进入test3目录。
cd test3
# 执行后显示~/Desktop/test3并进入该目录，而不是~目录的test3目录。
# 如果CDPATH存在值，就优先在CDPATH中查找并进入第一个匹配成功的，全部失败 最后尝试当前目录。
```
#### 关于`cdable_vars` 
```bash
# 打开选项。
shopt -s cdable_vars
# 假设当前路径以及CDPATH没有名为new_var的目录。
new_var='~/Desktop'
# 尝试进入。
cd new_var
# 关闭选项。
shopt -u cdable_vars
```


## 注意
1该命令是bash内建命令，相关的帮助信息请查看help命令
2建议您在编写脚本的过程中如有必要使用cd命令时，请增加必要的注释以用于提醒阅读者当前工作目录，以免出现诸如找不到文件这类问题的发生。



> 以上内容部分转载来自github用户[wangchujiang](https://github.com/jaywcjlove)