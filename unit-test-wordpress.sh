#!/bin/sh
composer global require phpunit/phpunit:5.*
cd /var/www/html/
wp plugin list  --allow-root
#wp scaffold plugin-tests --allow-root
wp post generate --count=30  --allow-root
wp scaffold plugin new-plugin  --allow-root
wp scaffold theme-tests r4m-blog  --allow-root
composer require --dev wp-cli/wp-cli-tests:^2.1 
#bin/install-wp-tests.sh wordpress root '' localhost latest
