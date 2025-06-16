# Use official lightweight PHP base image
FROM php:8.1-apache

# Install PHP extensions and required tools
RUN apt-get update && apt-get install -y --no-install-recommends \
        libpng-dev \
        libonig-dev \
        libxml2-dev \
        unzip \
        curl \
        zip \
        && docker-php-ext-install pdo_mysql mysqli && \
        apt-get clean && \
        rm -rf /var/lib/apt/lists/*

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Copy website files
# COPY src/ /var/www/html/

# Expose Apache port
EXPOSE 80

