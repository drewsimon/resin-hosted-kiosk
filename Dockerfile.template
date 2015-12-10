FROM resin/%%RESIN_MACHINE_NAME%%-python

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
    matchbox \
    x11-xserver-utils \
    xwit \
    fbset \
    gnome-keyring \
    libnss3 \
    xinit \
    xautomation \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y \
    gconf-service \
    libasound2 \
    libgconf-2-4 \
    libgnome-keyring0 \
    libxss1 \
    xdg-utils \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN wget https://dl.dropboxusercontent.com/u/87113035/chromium-browser-l10n_45.0.2454.85-0ubuntu0.15.04.1.1181_all.deb \
    && wget https://dl.dropboxusercontent.com/u/87113035/chromium-browser_45.0.2454.85-0ubuntu0.15.04.1.1181_armhf.deb \
    && wget https://dl.dropboxusercontent.com/u/87113035/chromium-codecs-ffmpeg-extra_45.0.2454.85-0ubuntu0.15.04.1.1181_armhf.deb \
    && sudo dpkg -i chromium-codecs-ffmpeg-extra_45.0.2454.85-0ubuntu0.15.04.1.1181_armhf.deb \
    && sudo dpkg -i chromium-browser-l10n_45.0.2454.85-0ubuntu0.15.04.1.1181_all.deb chromium-browser_45.0.2454.85-0ubuntu0.15.04.1.1181_armhf.deb

RUN apt-get update && apt-get install -y \
    unclutter \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

ENV INITSYSTEM on
COPY start.sh start.sh
COPY src/ /usr/src/app

CMD ["bash", "/start.sh"]
