# resume

> weineel 的个人简历

## Docker Dev and Build Step

需要安装 docker 和 docker-compose

### Dev

``` bash
cd docker-resume
# 启动开发环境
docker-compose up nodejs
```

* 第一次启动需要下载依赖，需要一段时间。

* 依赖下载完成后会进行编译。

* 编译并启动结束，直接访问 <http://localhost:80> 即可。

### Build

``` bash
cd docker-resume
# 编译到dist文件夹下, 把编译好的文件放到服务器目录下即可。
docker-compose run nodejs npm run build

# dist文件夹中的内容，发布到gh-pages分支
git subtree push --prefix=dist origin gh-pages
```

## Build Setup

``` bash
# install dependencies
npm install

# serve with hot reload at localhost:8080
npm run dev

# build for production with minification
npm run build

# build for production and view the bundle analyzer report
npm run build --report
```

For a detailed explanation on how things work, check out the [guide](http://vuejs-templates.github.io/webpack/) and [docs for vue-loader](http://vuejs.github.io/vue-loader).
