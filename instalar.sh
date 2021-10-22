#! /bin/sh
cd /home/pi
rm -rf LCD-show
rm -rf raspi
git clone https://github.com/Lcdwiki/LCD-show
chmod -R 755 LCD-show
cp kiosk.service /lib/systemd/system/
systemctl enable kiosk.service
cd LCD-show
./MHS35-show
