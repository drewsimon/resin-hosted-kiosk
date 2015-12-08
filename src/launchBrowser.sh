#/bin/bash

# Disable DPMS / Screen blanking
 xset -dpms
 xset s off
 xset s noblank

mkdir /root/.config
url=$URL
default='https://www.ordermygear.com'
sudo matchbox-window-manager -use_cursor no -use_titlebar no &
xte 'sleep 15' 'key F11'&
chromium-browser  --app=${url:-$default} --no-sandbox
sleep 2s
