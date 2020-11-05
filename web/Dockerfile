FROM php:7.3-apache
COPY php.ini /usr/local/etc/php/
RUN apt-get update && apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng-dev openssl zip unzip git nodejs npm vim nano libmcrypt-dev && docker-php-ext-install pdo_mysql mysqli mbstring gd iconv
RUN pecl install mcrypt-1.0.2
RUN docker-php-ext-enable mcrypt
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN a2enmod rewrite && service apache2 restart
