FROM php:7.3-fpm-alpine
LABEL maintainer "le chat the cat"

ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /composer

####################
# PHP Settings
####################
RUN set -eux && \
  apk add --update-cache --no-cache --virtual=.build-php-dependencies tzdata && \
  # changer le fuseau horaire
  cp /usr/share/zoneinfo/Etc/UTC /etc/localtime && \
  apk del .build-php-dependencies && \
  docker-php-ext-install pdo_mysql && \
  curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer && \
  apk add --update-cache --no-cache nodejs=10.16.3-r0 nodejs-npm

