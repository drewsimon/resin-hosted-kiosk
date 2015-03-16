#!/bin/bash

echo 'HERE WE GO!'

ldconfig

echo `whoami`
echo $RESIN_DEVICE_UUID
URL_VAR="RESIN_$RESIN_DEVICE_UUID"
echo "VAR:" + URL_VAR
DEFAULT_URL="NO URL FOUND"
echo "URL:" + $(echo $RESIN_DEVICE_UUID)

/usr/bin/startx
