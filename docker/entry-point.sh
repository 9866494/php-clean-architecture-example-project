#!/bin/bash

cd /var/www/html
composer install
vendor/bin/phpca-build-reports