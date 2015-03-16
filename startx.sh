#!/bin/bash

echo 'HERE WE GO!'

ldconfig

#printenv
echo `whoami`
URL_VAR=URL_${RESIN_DEVICE_UUID}
echo $URL_VAR
eval URL=\$$URL_VAR
echo $URL
echo $DEFAULT_URL
URL=${URL-`echo $DEFAULT_URL`}
echo $URL

#/usr/bin/startx
