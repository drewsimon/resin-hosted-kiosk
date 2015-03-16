echo 'HERE WE GO!'

ldconfig

echo `whoami`

chown pi: /home/pi/.xinitrc

su - -c startx 
