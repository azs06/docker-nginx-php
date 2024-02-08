# Use the official PHP image with FPM
FROM php:7.4-fpm

# Install any PHP extensions you need
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Set the working directory inside the container
WORKDIR /var/www/html

# Copy the PHP application code to the working directory
COPY html/ /var/www/html
