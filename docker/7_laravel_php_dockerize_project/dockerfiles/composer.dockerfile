FROM composer:latest

# RUN addgroup -g 1000 laravel
# RUN adduser -G laravel -g laravel -s /bin/sh -D laravel
 
# USER laravel

WORKDIR /var/www/html

ENTRYPOINT [ "composer", "--ignore-platform-reqs" ]