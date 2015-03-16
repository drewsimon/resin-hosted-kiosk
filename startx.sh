#!/bin/bash

echo 'HERE WE GO!'

ldconfig

echo $RESIN_9d83f5b35d85d47db47a4ce842a39f630fe945d6
echo `whoami`
echo $RESIN_DEVICE_UUID
URL_VAR=RESIN_${RESIN_DEVICE_UUID}
echo $URL_VAR
DEFAULT_URL="NO URL FOUND"
eval URL=\$$URL_VAR
echo $URL

#/usr/bin/startx
