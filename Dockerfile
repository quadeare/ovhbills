FROM php:7.3.11

WORKDIR /app

# Add project files in /app folder
ADD ./ /app

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php

# Install app
RUN composer install
