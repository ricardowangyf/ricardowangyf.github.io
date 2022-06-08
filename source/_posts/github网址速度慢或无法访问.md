---
title: github网址速度慢或无法访问
date: 2022.3.2
categories: 
tags:
- github
---

## github网址速度慢或无法访问

最近想用Mac电脑访问github发现一直登不上去,梯子太贵消费不起，常用的几个梯子基本都挂了，一直在网上搜寻解决方案，终于，结合两篇文章解决了
虽然访问依旧很慢，但是至少不需要梯子就能上github了

1.打开访达窗口，按住`shift command G`三个键，进入搜索文件夹的页面
![](https://tva3.sinaimg.cn/large/0074R88yly8gzvxxhn4z0j30gm04zaa8.jpg)

2.输入框内输入/etc/hosts
![](https://tva3.sinaimg.cn/large/0074R88yly8gzvy0sbky9j30gr04zq35.jpg)

3.找到hosts文件
![](https://s3.bmp.ovh/imgs/2022/03/b70711d5471fdfc3.jpg)

4.由于hosts文件夹不可编辑，所以复制一份hosts文件先保存到本地桌面
注：修改或者变更hosts文件需要输入你的开机密码

5.在新的hosts文件夹里输入如下内容：
```bash
151.101.185.194 github.global.ssl.fastly.net
140.82.114.4 github.com 
151.101.112.133 assets-cdn.github.com 
151.101.184.133 assets-cdn.github.com 
185.199.108.153 documentcloud.github.com 
192.30.253.118 gist.github.com
185.199.108.153 help.github.com 
192.30.253.120 nodeload.github.com 
151.101.112.133 raw.github.com 
23.21.63.56 status.github.com 
192.30.253.1668 training.github.com 
192.30.253.112 www.github.com 
151.101.13.194 github.global.ssl.fastly.net 
151.101.12.133 avatars0.githubusercontent.com 
151.101.112.133 avatars1.githubusercontent.com
```

![](https://s3.bmp.ovh/imgs/2022/03/cf87f0d6b7ec3de3.jpg)

6.刷新DNS
输入命令:
```bash
dscacheutil -flushcache
```

7.以上完成后，我们来到终端命令行ping 一下github
```bash
ping www.github.com
```

然后我们就会发现，终于ping通了

![](https://s3.bmp.ovh/imgs/2022/03/1b20cfa4b50191d1.jpg)

再然后我们就见到了github页面

![](https://s3.bmp.ovh/imgs/2022/03/232c696115e2ff6a.jpg)

虽然速度很慢(不知道是不是网速的原因)，但能上就行！