#!/bin/bash

echo 'HERE WE GO!'

ldconfig

printenv
echo `whoami`
DEFAULT_URL="NO URL FOUND"
eval URL=\$$RESIN_DEVICE_UUID
echo $URL

#/usr/bin/startx
