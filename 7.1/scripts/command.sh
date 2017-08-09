#!/bin/bash

if [ "php-fpm7.1" == "$1" ]; then
    touch /.checkfpm
fi

/prepare.sh

if [ "php-fpm7.1" != "$1" ] && [ "/bin/bash" != "$1" ]; then
    exec gosu www-data "$@"
else
    exec "$@"
fi
