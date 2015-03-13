echo 'HERE WE GO!'

ldconfig

chown pi: /home/pi/.xinitrc

su - pi -c startx 
