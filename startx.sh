#!/bin/bash
ldconfig

URL_VAR=URL_${RESIN_DEVICE_UUID}
eval URL=\$$URL_VAR
URL=${URL:=$DEFAULT_URL}

echo "Setting url to: $URL"

sed -i "s|APP_URL|$URL|g" /root/.xinitrc

touch /root/.Xauthority

cat /etc/hostname
cat /etc/hosts

/usr/bin/startx
