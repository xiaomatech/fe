#!/usr/bin/env bash

yum install -y bzip2 unzip

work=/data/work
version=8.10.0

wget https://nodejs.org/dist/v$version/node-v$version-linux-x64.tar.xz -O /tmp/node-v$version-linux-x64.tar.xz
xz -d /tmp/node-v$version-linux-x64.tar.xz
tar -xvf /tmp/node-v$version-linux-x64.tar -C /tmp
mv /tmp/node-v$version-linux-x64 /opt/node


echo 'export NODE_HOME=/opt/node
export PATH=$PATH:$NODE_HOME/bin
export NODE_PATH=$NODE_HOME/lib/node_modules'>>/etc/profile

source /etc/profile

npm install pm2 vue vuex vue-cli jquery vue-router vux v-charts echarts element-ui iview vue-datasource weui wepy wepy-cli zanui-weapp axios html-webpack-plugin html-webpack-externals-plugin -g

rm -rf ~/.npm

mkdir -p $work && cd $work
vue-init webpack video
cd video
npm run dev
