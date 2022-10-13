FROM php:7.1-fpm-alpine3.9

COPY DVFU/* /var/www/DVFU/
RUN ln /usr/local/bin/php /usr/local/lib/php

WORKDIR /var/www/DVFU/

CMD [ "php", "-S", "0.0.0.0:8080", "index.php" ]