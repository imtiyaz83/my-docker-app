# Use the official PHP image with Apache
FROM php:7.4-apache

# Install any required PHP extensions
RUN docker-php-ext-install mysqli

# Copy the application files into the container
COPY src/ /var/www/html/

# Set proper permissions (optional)
RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 755 /var/www/html

# Expose port 80 for the Apache server
EXPOSE 80

