echo 'HERE WE GO!'

ldconfig

useradd -m pi

chown pi: /home/pi/.xinitrc

su - pi -c startx &
