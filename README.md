# 新建hexo项目并部署到github # 


### 1. 查看是否安装node.js ###

如果安装了node.js可以查看版本号
运行命令

```bash
node -v #显示内容（我安装的是最新版本的nodejs）
# v16.13.0
```

### 2.安装Git ###

Mac下安装Xcode就自带Git。

如果是windows用户，就从[官网](https://git-scm.com/downloads)下载
![](https://img-blog.csdn.net/20180611111041738)

点击上图中表示的地方进行下载，得到Git-2.17.1.2-64-bit.exe文件。如果你的系统是32位的，可以通过如下方式下载：
![](https://img-blog.csdn.net/20180611111331873)

第二步：双击下载好的git安装包，弹出提示框，如下图：
![](https://img-blog.csdn.net/2018061111281656)

第三步： 直接点击“Next”进入下一步，选择安装路径，如下图：


![](https://img-blog.csdn.net/20180611112837136)

第四步：选择好安装路径后，点击“Next”进入下一步，弹出安装配置窗口，包括git命令行、git图形窗口等，如下图所示：

![](https://img-blog.csdn.net/20180611113643218)

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

第五步：按照上述默认配置，直接点击“Next”进入下一步，弹出“选择开始菜单文件夹”的窗口，如下图所示：

![](https://img-blog.csdn.net/20180611113809662)

第六步：按照默认路径即可，直接点击“Next”，进入下一步，进入“选择Git使用的默认编辑器”窗口，如下图所示：
![](https://img-blog.csdn.net/20180611114642984)

Use the Nano editor by default  默认使用 Nano 编辑器
Use Vim (The ubiquitous text editor) as Git's default editor  使用 Vim 作为 Git 的默认编辑器
Use Notepad++ as Git's default editor  使用 Notepad++ 作为 Git 的默认编辑器
Use Visual Studio Code as Git's default editor  使用 Visual Studio Code 作为Git 的默认编辑器
Use Visual Studio Code Insiders as Git's default editor  使用Visual Studio Code Insiders 作为 Git 的默认编辑器

第七步：点击“Next”，进入下一步，进入“调整Path环境变量”窗口，如下图所示：
![](https://img-blog.csdn.net/20180611133722654)

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

第八步：选第二项，然后点击“Next”进入下一步，选择HTTPS传输后端，如下图所示：

![](https://img-blog.csdn.net/20180611134343431)

Use the OpenSSL library
使用 OpenSSL 库
Server certificates will be validated using the ca-bundle.crt file.
服务器证书将使用ca-bundle.crt文件进行验证。

Use the native Windows Secure Channel library
使用本地 Windows 安全通道库
Server certificates will be validated using Windows Certificate Stores.This option also allows you to use your company's internal Root CA certificates distributed e.g. via Active Directory Domain Services.
服务器证书将使用Windows证书存储验证。此选项还允许您使用公司的内部根CA证书，例如， 通过Active Directory Domain Services 。

第九步：选择"Use the OpenSSL library"，点击“Next”进入下一步，配置行结束符，如下图所示：

![](https://img-blog.csdn.net/20180611134856670)

Checkout Windows-style,commit Unix-style line endings
Git will convert LF to CRLF when checking out text files.When committing text files,CRLF will be converted to LF .For cross-pltform projects,this is the recommended setting on Windows ("core.autocrlf" is set to "true")
在检出文本文件时，Git会将LF转换为CRLF。当提交文本文件时，CRLF将转换为LF。 对于跨平台项目，这是Windows上推荐的设置（“core.autocrlf”设置为“true”）

Checkout as-is , commit Unix-style line endings
Git will not perform any conversion when checking out text files. When committing text files, CRLF will be converted to LF. For cross-platform projects,this is the recommended setting on Unix ("core.autocrlf" is set to "input")
在检出文本文件时，Git不会执行任何转换。 提交文本文件时，CRLF将转换为LF。 对于跨平台项目，这是Unix上的推荐设置 （“core.autocrlf”设置为“input”）

Checkout as-is,commit as-is
Git will not perform any conversions when checking out or committing text files.Choosing this option is not recommended for cross-platform projects ("core.autocrlf"is set to "false")
在检出或提交文本文件时，Git不会执行任何转换。对于跨平台项目，不推荐使用此选项（“core.autocrlf”设置为“false”）

第十步：选择第一项，点击“Next”进入下一步，配置终端模拟器，如下图所示：
![](https://img-blog.csdn.net/20180611135510347)

Use MinTTY (the default terminal of MSYS2)
Git Bash will use MinTTY as terminal emulator,which sports a resizable window,non-rectangular selections and a Unicode font. Windows console programs (such as interactive Python) must be launched via 'winpty' to work in MinTTY.
Git Bash将使用MinTTY作为终端模拟器，该模拟器具有可调整大小的窗口，非矩形选区和Unicode字体。 Windows控制台程序（如交互式Python）必须通过'winpty'启动才能在MinTTY中运行。

Use Windows' default console window
Git will use the default console window of Windows ("cmd.exe"),which works well with Win32 console programs such as interactive Python or node.js , but has a very limited default scroll-back,needs to be configured to use aUnicode font in order to display non-ASCII characters correctly,and prior to Windows 10 its windows was not freely resizable and it only allowed rectangular text selections.
Git将使用Windows的默认控制台窗口（“cmd.exe”），该窗口可以与Win32控制台程序（如交互式Python或node.js）一起使用，但默认的回滚非常有限，需要配置为使用unicode 字体以正确显示非ASCII字符，并且在Windows 10之前，其窗口不能自由调整大小，并且只允许矩形文本选择。

第十一步：选择第一项，直接点击“Next”进入下一步，配置额外选项，如下图所示
![](https://img-blog.csdn.net/20180611140236773)

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

第十二步：使用默认配置，直接点击“Install”开始安装，如下图所示：
![](https://img-blog.csdn.net/20180611140704212)

第十三步:安装完成:
![](https://img-blog.csdn.net/20180611140818492)

### 3.Gihub新建仓库 ###
如果你有github账号那么就在github账号下新建一个仓库，需要注意的是这个仓库名称必须是你的用户名 username . github .比如我的用户名是logicwang 那么我的仓库名就是logicwang .github . io (注：中间不能加空格)

### 4.配置SSH Key ###
这一步不是必须的，配置SSHKey的好处是避免每次更新博客需要输入用户名和密码。这样会方便很多

详细配置过程。

4.1 检查本机上是否存在SSH Key
打开终端，输入如下命令
```bash
cd .ssh
ls -la
```
4.2  创建一个SSH Key
在终端输入如下命令
```bash
ssh-keygen -t rsa -C "your_email@example.com"
```

4.3 添加SSH Key到Github

点击右上角头像右边的三角图标，点击Settings，然后在左边菜单栏点击SSH and GPG keys，点击New SSH key，Title 随便填一个，在Key栏填入你复制的内容，点击Add SSH key，把你生成的sshkey添加到里面就可以了。

## 5.新建文件夹 ##

```bash
mkdir  blog #文件名称
```
## 6.安装 hexo ##
```bash
npm install -g hexo
```
如果报错就在前面加上sudo
```bash
运行成功显示
# Password:
# changed 96 packages in 4s
```

## 7.初始化 hexo ##
运行命令
```bash
hexo init myblog(这个可以随意起名) 
# 成功显示
# INFO  Cloning hexo-starter https://github.com/hexojs/hexo-starter.git
# INFO  Install dependencies
# INFO  Start blogging with Hexo!
```

## 8.进入到你初始化的文件夹中（myblog） ##
```bash
cd  myblog(你取的名称)
```

## 9.接下来是安装依赖包 ##
```bash
npm install
# 运行后显示
# added 1 package in 882ms
```

## 10.浏览器调试 ##
```bash
hexo s
```

点击 http://localhost:4000/

如图：
![](/source/_posts/images/blog1.jpg)

转跳到浏览器显示如下

![](/source/_posts/images/blog2.jpg)

## 11.同步本地博客到Github ##
在myblog（或者你自己取的名称）中的_config.yml文件中添加deploy节点
```bash
deploy:
  type: git
  repo: git@github.com:username/username.github.io.git
  branch: master
```

为了能够使Hexo部署到GitHub上，需要安装一个插件
```bash 
npm install hexo-deployer-git --save
```

然后操作
```bash
hexo clean

hexo g -d
```