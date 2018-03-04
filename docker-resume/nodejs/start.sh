#!/bin/bash

modulePath="/var/code/node_modules"

# 不存在node_modules目录时，执行npm install
if [ ! -d "$modulePath" ]; then
    npm install --registry=https://registry.npm.taobao.org --sass_binary_site=https://npm.taobao.org/mirrors/node-sass/ --cache=$HOME/.npm/.cache/cnpm --disturl=https://npm.taobao.org/dist --userconfig=$HOME/.cnpmrc
fi

# "mock": "node_modules/.bin/json-server --watch mock/db.json --routes mock/routes.json --port 9090",
# npm run dev

npm run dev
