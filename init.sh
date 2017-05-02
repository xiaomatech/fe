#!/usr/bin/env bash

version=7.6.0

wget https://nodejs.org/dist/v$version/node-v$version-linux-x64.tar.xz -O /tmp/node-v$version-linux-x64.tar.xz
xz -d /tmp/node-v$version-linux-x64.tar.xz
tar -xvf /tmp/node-v$version-linux-x64.tar -C /tmp
mv /tmp/node-v$version-linux-x64 /opt/node


echo 'export NODE_HOME=/opt/node
export PATH=$PATH:$NODE_HOME/bin
export NODE_PATH=$NODE_HOME/lib/node_modules'>>/etc/profile

npm install pm2 vue vuex vue-cli vue-loader vue-router element-ui vue-datasource weui vux vue-echarts vue-amap weex-toolkit promise-polyfill -g
