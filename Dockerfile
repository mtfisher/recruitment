FROM php:7.2-fpm

RUN buildDeps="libpq-dev libzip-dev libicu-dev" && \
    apt-get update && \
    apt-get install -y $buildDeps --no-install-recommends

RUN docker-php-ext-install \
    pdo \
    pdo_mysql \
    mysqli
