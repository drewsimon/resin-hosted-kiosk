#!/bin/bash
ldconfig

URL_VAR=URL_${RESIN_DEVICE_UUID}
eval URL=\$$URL_VAR
URL=${URL:=$DEFAULT_URL}

echo "Setting url to: $URL"

sed -i "s|APP_URL|$URL|g" /root/.xinitrc

touch /root/.Xauthority

echo '__________'
cat /etc/hostname
echo "HOST BEFORE"
cat /etc/hosts
echo '127.0.0.1 raspberrypi2' >> /etc/hosts
echo "HOST AFTER"
cat /etc/hosts
echo '__________'


/usr/bin/startx
