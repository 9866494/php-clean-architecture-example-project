FROM php:7.4-fpm

RUN apt-get update && apt-get install -y libmcrypt-dev curl git libmagickwand-dev --no-install-recommends
RUN pecl install imagick
RUN pecl install mcrypt
RUN docker-php-ext-enable imagick

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY ./entry-point.sh /entry-point.sh
RUN chmod +x /entry-point.sh