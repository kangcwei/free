#!/bin/bash

curl https://kaxy-web-proxy.kaxynetwork.com/api/download?key=jAl5yNqiuIJgqLdOlQ0VkInGMZTaFIVHfJnAkqul3TQS6XkNyhMWsZnGymqNJWby -o kaxy.zip
apt install unzip -y
unzip kaxy.zip
mv kaxy /etc/kaxy
rm kaxy.zip
rm run.sh
echo "DOWNLOAD COMPLETE!"

# guide
# 下载完成后 
# 切换到软件路径 cd /etc/kaxy/
# 运行安装脚本 sudo bash deploy.sh
# 安装完成后可使用命令查看状态 sudo systemctl status proxy
# 之后将该路由至机器上的 prefix 输入进 /etc/kaxy/conf.d/prefix.conf 其中每个 prefix 单独一行 
# 之后 Call Reset Server API 这一步的目的是将所有 prefix 中的 IP 导入软件
# 在以上都完成后 安装的全过程就完成了
# 软件非常简单易懂 完全可以自行查看各个配置文件进行配置




curl https://kaxy-web-proxy.kaxynetwork.com/api/download?key=jAl5yNqiuIJgqLdOlQ0VkInGMZTaFIVHfJnAkqul3TQS6XkNyhMWsZnGymqNJWby -o kaxy.zip;apt install unzip -y;unzip kaxy.zip; mv kaxy /etc/kaxy;sudo bash /etc/kaxy/deploy.sh;sudo systemctl status proxy


curl https://kaxy-web-proxy.kaxynetwork.com/api/download?key=jAl5yNqiuIJgqLdOlQ0VkInGMZTaFIVHfJnAkqul3TQS6XkNyhMWsZnGymqNJWby -o kaxy.zip;yum install unzip -y;unzip kaxy.zip; mv kaxy /etc/kaxy;sudo bash /etc/kaxy/deploy.sh;sudo systemctl status proxy