#A kiosk app running on top of [Resin.io](https://resin.io)

Mostly based on https://github.com/shaunmulligan/resin-epiphany-kiosk
Previously Based on http://blogs.wcode.org/2013/09/howto-boot-your-raspberry-pi-into-a-fullscreen-browser-kiosk/
Loosely based on https://bitbucket.org/lifeeth/resin-kiosk.git

##Installing 

Create a [Resin.io](https://resin.io) application

Add the Resin.io remote url to your project

```sh
git remote add resin git@git.resin.io:username/projectname.git
```

Push to Resin

```sh
git push resin
```

##Configuration

The application looks for ENV variables to display. 

`DEFAULT_URL` - The url to display on all kiosks unless a machine
specific url is set

`URL_<RESIN_DEVICE_UUID>` - Each resin device has a UUID. You can
specify a machine specific url using this variable format
