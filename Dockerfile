FROM resin/rpi-raspbian:wheezy-2015-01-15

RUN apt-get update && apt-get install -y \
    matchbox \
    chromium \
    x11-xserver-utils \
    ttf-mscorefonts-installer \
    xwit \
    sqlite3 \
    libnss3 \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

COPY ./config.txt /boot/config.txt
COPY ./xinitrc /home/pi/.xinitrc
COPY ./rc.local /etc/rc.local

ENTRYPOINT starx.sh
