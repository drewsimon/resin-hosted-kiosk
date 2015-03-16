#!/bin/bash

echo 'HERE WE GO!'

ldconfig

echo `whoami`
echo `ls /home`
echo `ls /home/root`

chown pi: /home/pi/.xinitrc

su - -c startx 
