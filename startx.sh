#!/bin/bash

echo 'HERE WE GO!'

ldconfig

echo `whoami`
echo $RESIN_DEVICE_UUID
DEFAULT_URL="NO URL FOUND"
echo "URL:" + $(echo $RESIN_DEVICE_UUID)

/usr/bin/startx
