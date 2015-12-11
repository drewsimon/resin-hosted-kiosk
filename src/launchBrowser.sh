#/bin/bash

# Disable DPMS / Screen blanking
 xset -dpms
 xset s off
 xset s noblank

rm -rf /root/.config
mkdir -p /root/.config
url=$URL
default='https://www.ordermygear.com'
sudo matchbox-window-manager -use_titlebar no -use_cursor no &
xte 'sleep 15' 'key F11'&
chromium-browser  --app=${url:-$default} --no-sandbox --user-data-dir=/root/.config
unclutter -idle 0.1 -root
sleep 2s
