#! /bin/bash

cd $2/$1/web;

line=$(head -n 1 $2/$1/config/sync/system.site.yml);
uuid=$(echo $line | sed 's/uuid: //g');

/usr/local/bin/drush config-set "system.site" uuid "$uuid" --y;