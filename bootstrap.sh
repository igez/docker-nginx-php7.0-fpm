#!/bin/bash

if [ ! -z $PUB ]
then
    sed -i "s/root \/var\/www \/var\/www\/$PUB\//g" /etc/nginx/sites-enabled/default
fi

if [ ! -z $DOMAIN ]
then
    sed -i "s/server_name SITE_NAME;/server_name $DOMAIN;/g" /etc/nginx/sites-enabled/default
fi

/usr/bin/supervisord && tail -f /dev/null
