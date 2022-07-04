# FROM php:8.1.0-fpm
FROM php:8.2-rc-fpm

WORKDIR /var/www/html

RUN docker-php-ext-install pdo pdo_mysql mysqli

RUN apt-get update && apt-get install -y \
    imagemagick libmagickwand-dev --no-install-recommends \
    && pecl install imagick \
    && docker-php-ext-enable imagick