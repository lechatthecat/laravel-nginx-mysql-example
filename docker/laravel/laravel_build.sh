#!/bin/ash
cd /laravel
composer install
php artisan key:generate
chown -R www-data:www-data .
chmod 777 storage
npm install
npm run dev 
