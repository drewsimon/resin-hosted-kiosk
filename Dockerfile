FROM resin/rpi-raspbian:jessie

RUN apt-get -q update && apt-get -qy install \
    matchbox \
    x11-xserver-utils \
    ttf-mscorefonts-installer \
    xwit \
    fbset \
    sqlite3 \
    libnss3 \
    xinit \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN wget http://ftp.us.debian.org/debian/pool/main/libg/libgcrypt11/libgcrypt11_1.5.0-5+deb7u3_armhf.deb \
    && wget http://launchpadlibrarian.net/218525709/chromium-browser_45.0.2454.85-0ubuntu0.14.04.1.1097_armhf.deb \
    && wget http://launchpadlibrarian.net/218525711/chromium-codecs-ffmpeg-extra_45.0.2454.85-0ubuntu0.14.04.1.1097_armhf.deb \
    && sudo dpkg -i libgcrypt11_1.5.0-5+deb7u3_armhf.deb \
    && sudo dpkg -i chromium-codecs-ffmpeg-extra_45.0.2454.85-0ubuntu0.14.04.1.1097_armhf.deb \
    && sudo dpkg -i chromium-browser_45.0.2454.85-0ubuntu0.14.04.1.1097_armhf.deb

COPY ./config.txt /boot/config.txt
COPY ./rc.local /etc/rc.local
COPY ./xinitrc /root/.xinitrc
COPY ./startx.sh /root/startx.sh

ENTRYPOINT /root/startx.sh
