# https://github.com/docker-library/php/blob/c856411d1c21111855a54c5d29f2bfe099d63ce7/7.1/stretch/cli/Dockerfile 
FROM php:7.1-fpm
MAINTAINER bocai <bocai@huanleguang.com>

ENV TZ=Asia/Shanghai \
    LD_LIBRARY_PATH="/usr/local/lib:${LD_LIBRARY_PATH}"

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

######
# You can install php extensions using docker-php-ext-install
######
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libmagickwand-dev \
        libmagickcore-dev \
    && docker-php-ext-install -j$(nproc) iconv mcrypt \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install -j$(nproc) pdo_mysql \
    && docker-php-ext-install -j$(nproc) mysqli \
    && docker-php-ext-install -j$(nproc) zip

# 安装 php 扩展
    # yaf
RUN curl -fsSL 'http://pecl.php.net/get/yaf-3.0.5.tgz' -o yaf-3.0.5.tgz \
    && mkdir -p /tmp/yaf \
    && tar -zxvf yaf-3.0.5.tgz -C /tmp/yaf --strip-components=1 \
    && rm yaf-3.0.5.tgz \
    && docker-php-ext-configure /tmp/yaf --enable-yaf \
    && docker-php-ext-install /tmp/yaf \
    && rm -r /tmp/yaf \
    # yac
    && curl -fsSL 'http://pecl.php.net/get/yac-2.0.2.tgz' -o yac-2.0.2.tgz \
    && mkdir -p /tmp/yac \
    && tar -zxvf yac-2.0.2.tgz -C /tmp/yac --strip-components=1 \
    && rm yac-2.0.2.tgz \
    && docker-php-ext-configure /tmp/yac --enable-yac \
    && docker-php-ext-install /tmp/yac \
    && rm -r /tmp/yac \
    # redis
    && curl -fsSL 'http://pecl.php.net/get/redis-3.1.4.tgz' -o redis-3.1.4.tgz \
    && mkdir -p /tmp/redis \
    && tar -zxvf redis-3.1.4.tgz -C /tmp/redis --strip-components=1 \
    && rm redis-3.1.4.tgz \
    && docker-php-ext-configure /tmp/redis --enable-redis \
    && docker-php-ext-install /tmp/redis \
    && rm -r /tmp/redis \
    # swoole
    && curl -fsSL 'http://pecl.php.net/get/swoole-1.9.23.tgz' -o swoole-1.9.23.tgz \
    && mkdir -p /tmp/swoole \
    && tar -zxvf swoole-1.9.23.tgz -C /tmp/swoole --strip-components=1 \
    && rm swoole-1.9.23.tgz \
    && docker-php-ext-configure /tmp/swoole --enable-swoole \
    && docker-php-ext-install /tmp/swoole \
    && rm -r /tmp/swoole \
    # seaslog
    && curl -fsSL 'http://pecl.php.net/get/SeasLog-1.8.4.tgz' -o SeasLog-1.8.4.tgz \
    && mkdir -p /tmp/seaslog \
    && tar -zxvf SeasLog-1.8.4.tgz -C /tmp/seaslog --strip-components=1 \
    && rm SeasLog-1.8.4.tgz \
    && docker-php-ext-configure /tmp/seaslog --enable-seaslog \
    && docker-php-ext-install /tmp/seaslog \
    && rm -r /tmp/seaslog \
    # imagick
    && curl -fsSL 'http://pecl.php.net/get/imagick-3.4.3.tgz' -o imagick-3.4.3.tgz \
    && mkdir -p /tmp/imagick \
    && tar -zxvf imagick-3.4.3.tgz -C /tmp/imagick --strip-components=1 \
    && rm imagick-3.4.3.tgz \
    && docker-php-ext-configure /tmp/imagick  \
    && docker-php-ext-install /tmp/imagick \
    && rm -r /tmp/imagick
