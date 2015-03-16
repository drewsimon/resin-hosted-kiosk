#!/bin/bash
ldconfig

#printenv
URL_VAR=URL_${RESIN_DEVICE_UUID}
eval URL=\$$URL_VAR
echo $URL
echo $DEFAULT_URL
#URL=${URL-`echo $DEFAULT_URL`}
echo $URL

#/usr/bin/startx
