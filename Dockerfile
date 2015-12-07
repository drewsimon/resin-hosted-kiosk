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
    gconf-service \
    libasound2 \
    libgconf-2-4 \
    libgnome-keyring0 \
    libxss1 \
    xdg-utils \
    lsb-release \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*


RUN wget https://dl.dropboxusercontent.com/u/87113035/chromium-browser-l10n_45.0.2454.85-0ubuntu0.15.04.1.1181_all.deb \
    && wget https://dl.dropboxusercontent.com/u/87113035/chromium-browser_45.0.2454.85-0ubuntu0.15.04.1.1181_armhf.deb \
    && wget https://dl.dropboxusercontent.com/u/87113035/chromium-codecs-ffmpeg-extra_45.0.2454.85-0ubuntu0.15.04.1.1181_armhf.deb \
    && sudo dpkg -i chromium-codecs-ffmpeg-extra_45.0.2454.85-0ubuntu0.15.04.1.1181_armhf.deb \
    && sudo dpkg -i chromium-browser-l10n_45.0.2454.85-0ubuntu0.15.04.1.1181_all.deb chromium-browser_45.0.2454.85-0ubuntu0.15.04.1.1181_armhf.deb

COPY ./config.txt /boot/config.txt
COPY ./rc.local /etc/rc.local
COPY ./xinitrc /root/.xinitrc
COPY ./startx.sh /root/startx.sh

ENTRYPOINT /root/startx.sh
