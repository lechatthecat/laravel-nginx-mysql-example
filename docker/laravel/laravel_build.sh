#!/bin/ash
composer self-update
composer create-project --prefer-dist laravel/laravel sample_laravel
cd /laravel/sample_laravel
php artisan key:generate
chown -R www-data:www-data .
chmod 777 storage
npm install
npm run dev 
