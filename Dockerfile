FROM php:7.3.11

# Set default folder
WORKDIR /app

# Add project files in /app folder
ADD ./ /app

# Install dependencies
RUN apt update &&\
    apt install -y git &&\
    apt-get clean

# Install mysqli php driver
RUN docker-php-ext-install mysqli &&\
    docker-php-ext-install pdo_mysql

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php

# Install app
RUN php composer.phar install
