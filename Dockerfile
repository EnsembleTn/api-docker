FROM php:7.2-apache

RUN set -xe && \
    apt-get update && \
    apt-get install -y \
            git \
            libcurl4-openssl-dev \
            unzip && \
    docker-php-ext-install -j$(nproc) \
            curl \
            pdo_mysql

RUN a2enmod rewrite

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY docker-ensembletn-entrypoint.sh /docker-ensembletn-entrypoint.sh

RUN chmod +x /docker-ensembletn-entrypoint.sh

CMD /docker-ensembletn-entrypoint.sh
