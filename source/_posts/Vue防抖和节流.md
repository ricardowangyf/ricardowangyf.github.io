---
title: Vue防抖
date: 2022.10.2
categories: Vue
tags: 
- Vue
---

## Vue防抖和节流

* 防抖(debounce)

在事件被触发n秒后再执行回调,如果在这n秒内又被触发,则重新计时

解释：我们在点击请求或者点击加载等过程中,只需要点击一次,但由于请求慢,点击了好多次,导致多次请求,防抖就是在点击了好多次之后的最后一次才会请求

实例:
```js
data:{
    times: '',
},
methods: {
    extract() {
        this.debounce(this.handle, 1000)
    },
    debounce(fn, delay) {
        if (this.times) clearTimeout(this.times)
        this.times = setTimeout(() => {
            fn()
        }, delay);
    },
    handle() {
        console.log("执行了······")
    },
}
```

* 节流(throttle)

节流不是不让函数触发, 而是减少函数触发的频率 ，就是说在固定时间内, 函数只能执行一次，在某个时间段内暂时失效，过了这段时间后再重新激活

解释:类似于游戏中技能的CD时间。

实例:
```js
data(){
    return{
        valid:false
    }
},
methods: {
    extract() {
        this.throttle(this.handle, 1000)
    },
    throttle(fn, wait) {
        if (!this.valid) {
        //(通行令不正确，不许进)判读如果不是false点击的话就返回一个false，并且不在向下执行。
            return false
        }
        //这里写要执行的任务，当你设置的这个到了之后，便会执行你所定义的方法。
        this.valid = false
        setTimeout(() => {
            this.valid = true
            this.handle()
        }, wait)
    },
    //实现对应的逻辑
    handle() {
        console.log('执行完毕······')
    },
}    
```