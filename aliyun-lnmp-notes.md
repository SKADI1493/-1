# 阿里云 ECS + 宝塔 LNMP 部署记录

## 环境
- ECS: 2核2G, Alibaba Cloud Linux 3.2104, ESSD 40G
- 软件: 宝塔面板 + Nginx 1.28 + PHP 8.2 + MySQL 5.7

## 关键步骤
1. 购买 ECS, 选择 Alibaba Cloud Linux 3 镜像
2. 安全组放行: 22(SSH), 80(HTTP), 443(HTTPS), 8888(宝塔)
3. SSH 连接后安装宝塔: `yum install -y wget && wget -O install.sh https://download.bt.cn/install/install_6.0.sh && sh install.sh`
4. 宝塔软件商店安装 Nginx 1.28 / MySQL 5.7 / PHP 8.2
5. 创建站点 -> 部署 WordPress -> 配置伪静态
6. 安全组按最小化原则收敛端口, 关闭 3306/8888 对公网的直接暴露

## 踩坑
- PHP 8.2 与 phpMyAdmin 旧版不兼容, 需升级 phpMyAdmin 到 5.2
- 宝塔面板默认 8888 端口必须改或限来源 IP
- MySQL 3306 不应对公网开放
