#!/bin/bash

echo 'HERE WE GO!'

ldconfig

echo `whoami`
echo `ls /home`
echo `ls /home/root`

/usr/bin/startx &
