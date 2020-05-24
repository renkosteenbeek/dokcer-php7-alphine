FROM renkosteenbeek/php7:1.0

# Add Xdebug
ENV XDEBUG_CONFIG='idekey=PHPSTORM'
RUN apk add --no-cache $PHPIZE_DEPS \
    && pecl install xdebug-2.9.5 \
    && docker-php-ext-enable xdebug;

COPY xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini