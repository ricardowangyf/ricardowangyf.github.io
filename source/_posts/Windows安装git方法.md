---
title: Windows安装git方法
date: 2022.4.1
description:  
categories: Windows
tags:
- Windows
- Git
---



#### 安装Git

Windows用户，从[官网](https://git-scm.com/downloads)下载
![](https://s3.bmp.ovh/imgs/2022/04/01/b96e4197882cf200.png)


点击上图中表示的地方进行下载，得到Git-2.17.1.2-64-bit.exe文件。如果你的系统是32位的，可以通过如下方式下载：
![](https://i.bmp.ovh/imgs/2022/04/01/ceac135ed96ef406.png)


#### 双击下载好的git安装包，弹出提示框

如图

![](https://s3.bmp.ovh/imgs/2022/04/01/6ab7c3a07d6a8435.png)


#### 直接点击“Next”进入下一步，选择安装路径

如图：
![](https://s3.bmp.ovh/imgs/2022/04/01/4a2d623e9e45cf36.png)


#### 选择好安装路径后，点击“Next”进入下一步，弹出安装配置窗口，包括git命令行、git图形窗口等，

如图
![](https://s3.bmp.ovh/imgs/2022/04/01/a52513c70510d7ab.png)

Additional icons 附加图标
​ On the Desktop 在桌面上
Windows Explorer integration  Windows资源管理器集成鼠标右键菜单
​ Git Bash Here
​ Git GUI Here
Git LFS (Large File Support)  大文件支持
Associate .git* configuration files with the default text editor  将 .git 配置文件与默认文本编辑器相关联
Associate .sh files to be run with Bash  将.sh文件关联到Bash运行
Use a TrueType font in all console windows  在所有控制台窗口中使用TrueType字体
Check daily for Git for Windows updates  每天检查Git是否有Windows更新

#### 按照上述默认配置，直接点击“Next”进入下一步，弹出“选择开始菜单文件夹”的窗口，

如图
![](https://s3.bmp.ovh/imgs/2022/04/01/7635e3a45e7116ab.png)

#### 按照默认路径即可，直接点击“Next”，进入下一步，进入“选择Git使用的默认编辑器”窗口

如图
![](https://s3.bmp.ovh/imgs/2022/04/01/d18aedf8a47060c4.png)

Use the Nano editor by default  默认使用 Nano 编辑器
Use Vim (The ubiquitous text editor) as Git's default editor  使用 Vim 作为 Git 的默认编辑器
Use Notepad++ as Git's default editor  使用 Notepad++ 作为 Git 的默认编辑器
Use Visual Studio Code as Git's default editor  使用 Visual Studio Code 作为Git 的默认编辑器
Use Visual Studio Code Insiders as Git's default editor  使用Visual Studio Code Insiders 作为 Git 的默认编辑器

#### 点击“Next”，进入下一步，进入“调整Path环境变量”窗口

如图
![](https://s3.bmp.ovh/imgs/2022/04/01/1e1e0ad92b67227c.png)

配置PATH环境
Use Git from Git Bash only
This is the safest choice as your PATH will not be modified at all.You will only be able to use the Git command line tools form Git Bash.
这是最安全的选择，因为您的PATH根本不会被修改。您只能使用 Git Bash 的 Git 命令行工具。

Use Git from the Windows Command Prompt
This option is considered safe as it only adds some minimal Git wrappers to your PATH to avoid cluttering your environment with optional Unix tools . You will be able to use Git from both Git Bash and the Windows Command Prompt.
这个选项被认为是安全的，因为它只向PATH添加一些最小的 Git包，以避免使用可选的Unix工具混淆环境。 您将能够从 Git Bash 和 Windows 命令提示符中使用 Git。

Use Git and optional Unix tools from the Windows Command Prompt
从Windows命令提示符使用Git和可选的Unix工具
Both Git and the optional Unix tools will be added to you PATH
Git和可选的Unix工具都将添加到您计算机的 PATH 中
Warning:This will override Windows tools like "find and sort".Only use this option if you understand the implications.
警告：这将覆盖Windows工具，如 “ find 和 sort ”。只有在了解其含义后才使用此选项。

#### 选第二项，然后点击“Next”进入下一步，选择HTTPS传输后端

如图
![](https://s3.bmp.ovh/imgs/2022/04/01/250d400f78254f34.png)

Use the OpenSSL library
使用 OpenSSL 库
Server certificates will be validated using the ca-bundle.crt file.
服务器证书将使用ca-bundle.crt文件进行验证。

Use the native Windows Secure Channel library
使用本地 Windows 安全通道库
Server certificates will be validated using Windows Certificate Stores.This option also allows you to use your company's internal Root CA certificates distributed e.g. via Active Directory Domain Services.
服务器证书将使用Windows证书存储验证。此选项还允许您使用公司的内部根CA证书，例如， 通过Active Directory Domain Services 。

#### 选择"Use the OpenSSL library"，点击“Next”进入下一步，配置行结束符

如图
![](https://i.bmp.ovh/imgs/2022/04/01/55fdf15f684fc28b.png)

Checkout Windows-style,commit Unix-style line endings
Git will convert LF to CRLF when checking out text files.When committing text files,CRLF will be converted to LF .For cross-pltform projects,this is the recommended setting on Windows ("core.autocrlf" is set to "true")
在检出文本文件时，Git会将LF转换为CRLF。当提交文本文件时，CRLF将转换为LF。 对于跨平台项目，这是Windows上推荐的设置（“core.autocrlf”设置为“true”）

Checkout as-is , commit Unix-style line endings
Git will not perform any conversion when checking out text files. When committing text files, CRLF will be converted to LF. For cross-platform projects,this is the recommended setting on Unix ("core.autocrlf" is set to "input")
在检出文本文件时，Git不会执行任何转换。 提交文本文件时，CRLF将转换为LF。 对于跨平台项目，这是Unix上的推荐设置 （“core.autocrlf”设置为“input”）

Checkout as-is,commit as-is
Git will not perform any conversions when checking out or committing text files.Choosing this option is not recommended for cross-platform projects ("core.autocrlf"is set to "false")
在检出或提交文本文件时，Git不会执行任何转换。对于跨平台项目，不推荐使用此选项（“core.autocrlf”设置为“false”）

#### 选择第一项，点击“Next”进入下一步，配置终端模拟器

如图
![](https://s3.bmp.ovh/imgs/2022/04/01/78b5b25ce0ba8452.png)

Use MinTTY (the default terminal of MSYS2)
Git Bash will use MinTTY as terminal emulator,which sports a resizable window,non-rectangular selections and a Unicode font. Windows console programs (such as interactive Python) must be launched via 'winpty' to work in MinTTY.
Git Bash将使用MinTTY作为终端模拟器，该模拟器具有可调整大小的窗口，非矩形选区和Unicode字体。 Windows控制台程序（如交互式Python）必须通过'winpty'启动才能在MinTTY中运行。

Use Windows' default console window
Git will use the default console window of Windows ("cmd.exe"),which works well with Win32 console programs such as interactive Python or node.js , but has a very limited default scroll-back,needs to be configured to use aUnicode font in order to display non-ASCII characters correctly,and prior to Windows 10 its windows was not freely resizable and it only allowed rectangular text selections.
Git将使用Windows的默认控制台窗口（“cmd.exe”），该窗口可以与Win32控制台程序（如交互式Python或node.js）一起使用，但默认的回滚非常有限，需要配置为使用unicode 字体以正确显示非ASCII字符，并且在Windows 10之前，其窗口不能自由调整大小，并且只允许矩形文本选择。

#### 选择第一项，直接点击“Next”进入下一步，配置额外选项

如图
![](https://s3.bmp.ovh/imgs/2022/04/01/03bcc1bfb2458da4.png)

Enable file system caching
启用文件系统缓存
File system data will be read in bulk and cached in memory for certain operations ("core.fscache" is set to "true"). This provides a significant performance boost.
文件系统数据将被批量读取并缓存在内存中用于某些操作（“core.fscache”设置为“true”）。 这提供了显着的性能提升。

Enable Git Credential Manager
启用Git凭证管理器
The Git Credential Manager for Windows provides secure Git credential storage for Windows,most notably multi-factor authentication support for Visual Studio Team Services and GitHub. (requires .NET framework v4.5.1 or or later).
Windows的Git凭证管理器为Windows提供安全的Git凭证存储，最显着的是对Visual Studio Team Services和GitHub的多因素身份验证支持。 （需要.NET Framework v4.5.1或更高版本）。

Enable symbolic links
启用符号链接
Enable symbolic links (requires the SeCreateSymbolicLink permission).Please note that existing repositories are unaffected by this setting.
启用符号链接（需要SeCreateSymbolicLink权限）。请注意，现有存储库不受此设置的影响。

#### 使用默认配置，直接点击“Install”开始安装

如图
![](https://s3.bmp.ovh/imgs/2022/04/01/fec3e1b8bb261a05.png)

#### 安装完成
![](https://i.bmp.ovh/imgs/2022/04/01/3774b9e50077f8b2.png)