FROM php:apache

COPY /src/index.php /var/www/html/

EXPOSE 3001