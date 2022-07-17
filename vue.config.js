const { defineConfig } = require('@vue/cli-service')
module.exports = defineConfig({
    transpileDependencies: true
})

publicPath: process.env.NODE_ENV === 'production' ?
    '/loigcwang.github.io/' //这里写展示页面的仓库名称
    :
    '/'