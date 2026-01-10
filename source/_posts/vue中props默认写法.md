---
title: Vue中props默认写法
date: 2022.2.20
description: 
categories: Vue
hide: true
tags:
- Vue
---
<script src="prism.js"></script>
<link href="themes/prism.css" rel="stylesheet" />

## vue中props默认写法 ##

```bash
props: {
	// 字符串
	stringType: {
		type: String,
		default: () => ''
	},
	// 数值
	numberType: {
		type: Number,
		default: 0
	}
	// 布尔值
	booleanType: {
		type: Boolean,
		default: true
	}
	// 数组
	arrayType: {
		type: Array,
		default: () => []
	}
	// 对象
	objectType: {
		type: Object,
		default: () => {}
	}
	# 待补充...
}
```