#!/bin/bash
ldconfig

URL_VAR=URL_${RESIN_DEVICE_UUID}
eval URL=\$$URL_VAR
echo $URL
echo $DEFAULT_URL
URL=${URL:=$DEFAULT_URL}
echo $URL

sed -i "s|APP_URL|$URL|g" /root/.xinitrc

touch /root/.Xauthority

/usr/bin/startx
