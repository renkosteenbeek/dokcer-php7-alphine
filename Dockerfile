ARG PHP_VERSION=""
FROM renkosteenbeek/php7:1.0

RUN apk add --no-cache $PHPIZE_DEPS \
    && pecl install xdebug-2.9.5 \
    && docker-php-ext-enable xdebug

COPY xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini