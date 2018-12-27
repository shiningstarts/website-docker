# A docker for website
## Description
A one-click deployment for web server(PHP + NGINX), it works with [Docker](https://www.docker.com/)  
PHP version is 7.1  
NGINX version is 1.14.2
Other Languages:  
- [Chinese](./README.CN.md)
## Deploy
```shell
git clone git@github.com:shiningstarts/website-docker.git
cd website-docker
# build
docker/run build
# start service
docker/run start
# add hosts
echo 127.0.0.1 wwww.test.com >> /etc/hosts
# lauch www.test.com
```
## Reference
- [docker-nginx](https://github.com/nginxinc/docker-nginx/)
- [docker-php](https://github.com/docker-library/php)
