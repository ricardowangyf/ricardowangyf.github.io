# 新建hexo项目并部署到github

Windows用户安装git的方法移步至另外一篇[文章](https://wangyufei.fun/2022/04/01/windows%E5%AE%89%E8%A3%85git%E6%96%B9%E6%B3%95/)


### 1. 查看是否安装node.js

如果安装了node.js可以查看版本号
运行命令

```bash
node -v 
#显示内容（我安装的是最新版本的nodejs）
# v16.13.0
```

### 2.Gihub新建仓库
如果你有github账号那么就在github账号下新建一个仓库，需要注意的是这个仓库名称必须是你的用户名 username . github .比如我的用户名是logicwang 那么我的仓库名就是logicwang .github . io (注：中间不能加空格)

### 3.配置SSH Key
这一步不是必须的，配置SSHKey的好处是避免每次更新博客需要输入用户名和密码。这样会方便很多

详细配置过程。

3.1 检查本机上是否存在SSH Key
打开终端，输入如下命令
```bash
cd .ssh
ls -la
```
3.2  创建一个SSH Key
在终端输入如下命令
```bash
ssh-keygen -t rsa -C "your_email@example.com"
```

3.3 添加SSH Key到Github

点击右上角头像右边的三角图标，点击Settings，然后在左边菜单栏点击SSH and GPG keys，点击New SSH key，Title 随便填一个，在Key栏填入你复制的内容，点击Add SSH key，把你生成的sshkey添加到里面就可以了。

## 4.新建文件夹

```bash
mkdir  blog #文件名称
```
## 5.安装 hexo
```bash
npm install -g hexo
```
如果报错就在前面加上sudo

## 6.初始化 hexo
运行命令
```bash
hexo init myblog(这个可以随意起名) 
```

## 7.进入到你初始化的文件夹中（myblog)
```bash
cd  myblog(你取的名称)
```

## 8.接下来是安装依赖包
```bash
npm install

# 亦或者你可以简写成npm i
```

## 9.浏览器调试
```bash
hexo s
```

如图：
![](/source/_posts/images/blog1.jpg)

转跳到浏览器显示如下

![](/source/_posts/images/blog2.jpg)

## 10.同步本地博客到Github
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