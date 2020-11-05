#!/bin/bash

#
cp dot-env web/src/.env
echo "starts new shell: docker exec -it web bash"
exit

composer install
php artisan key:generate
chgrp -R www-data storage bootstrap/cache
chmod -R ug+rwx storage bootstrap/cache