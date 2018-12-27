# web 服务器 docker 包
## 描述
方便一键部署网页服务器（PHP + NGINX），需要先安装 [Docker](https://www.docker.com/) 才能运行  
PHP 版本 7.1  
NGINX 版本号 1.14.2  
其他语言:  
- [英文](./README.md)
## 部署
```shell
git clone git@github.com:shiningstarts/website-docker.git
cd website-docker
# 构建docker
docker/run build
# 启动服务
docker/run start
# 添加 hosts
echo 127.0.0.1 wwww.test.com >> /etc/hosts
#  浏览器访问 www.test.com
```
## 参考
- [docker-nginx](https://github.com/nginxinc/docker-nginx/)
- [docker-php](https://github.com/docker-library/php)
