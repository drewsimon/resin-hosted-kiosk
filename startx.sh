#!/bin/bash

echo 'HERE WE GO!'

ldconfig

printenv
echo `whoami`
DEFAULT_URL="NO URL FOUND"
URL_VAR=URL_${RESIN_DEVICE_UUID}
eval URL=\$$URL_VAR
echo $URL
URL=${URL-`echo $DEFAULT_URL`}
echo $URL

#/usr/bin/startx
