FROM php:7.4-fpm-alpine

WORKDIR /var/www/html

# COPY src .

RUN docker-php-ext-install pdo pdo_mysql

# RUN addgroup -g 1001 laravel
# RUN adduser -G laravel -g laravel -s /bin/sh -D laravel
 
# USER laravel