#!/bin/bash
sed -i "s/<DATA_BASE_NAME>/$DATA_BASE_NAME/" /var/www/html/sites/default/settings.php
sed -i "s/<USER_NAME>/$USER_NAME/" /var/www/html/sites/default/settings.php
sed -i "s/<PASSWORD>/$PASSWORD/" /var/www/html/sites/default/settings.php
sed -i "s/<HOST>/$HOST/" /var/www/html/sites/default/settings.php
sed -i "s/<PORT>/$PORT/" /var/www/html/sites/default/settings.php
supervisord --nodaemon --configuration /etc/supervisor/supervisord.conf 