---
title: JS学习笔记
date: 2023.2.28
categories: JavaScript
tags: 
- JavaScript
---

#  JS学习笔记 

## JS用法  
`2023.2.28`

在`head`标签中写JS
```HTML
<!DOCTYPE html>
<html>
<head>
<script>
function myFunction(){
    document.getElementById("demo").innerHTML="我的第一个 JavaScript 函数";
}
</script>
</head>
<body>
<p id="demo">段落</p>
<button type="button" onclick="myFunction()">尝试一下</button>
</body>
</html>
```

在`body`标签中编写JS
```html
<!DOCTYPE html>
<html>
<body>
<p id="demo">一个段落</p>
<button type="button" onclick="myFunction()">尝试一下</button>
<script>
function myFunction(){
    document.getElementById("demo").innerHTML="JS内容";
}
</script>
</body>
</html>
```
在`外部`编写JS
```html
<h1>我的 Web 页面</h1>
<p id="demo">一个段落。</p>
<button type="button" onclick="myFunction()">点击这里</button>
<p><b>注释：</b>myFunction 保存在名为 "myscript.js" 的外部文件中。</p>
<script src="../outesied.js"></script>
```


## JS浏览器中执行

1 console窗口调试JS代码
![](https://atts.w3cschool.cn/attachments/day_210927/202109271433192356.jpg)


![](https://atts.w3cschool.cn/attachments/day_210927/202109271433194077.jpg)

![](https://atts.w3cschool.cn/attachments/image/20211106/1636165017322580.jpeg)


2、chrome snippets小脚本

以在 Chrome 浏览器中创建一个脚本来执行，在开发者工具中点击 Sources 面板，选择 Snippets 选项卡，在导航器中右击鼠标，然后选择 Create new snippet 来新建一个脚本文件：
![](https://atts.w3cschool.cn/attachments/day_210927/202109271433207531.jpg)

![](https://atts.w3cschool.cn/attachments/day_210927/202109271433219500.jpg)

点击Create new snippet 后，会自动创建一个文件，你只需在右侧窗口输入以下代码，然后按 Command+S（Mac）或 Ctrl+S（Windows 和 Linux）保存更改即可。