#!/bin/bash

echo 'HERE WE GO!'

ldconfig

echo `whoami`
echo $RESIN_DEVICE_UUID
URL=${$RES$IN_DEVICE_UUID:-"NO URL FOUND"}
#URL=${$RESIN_DEVICE_UUID:-"https://teamomg.geckoboard.com/loop/F74A13D1272AECD9"}
echo $URL;

/usr/bin/startx
