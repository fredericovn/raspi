#! /bin/sh
cd /home/pi
sudo rm -rf LCD-show
sudo rm -rf raspi
git clone https://github.com/Lcdwiki/LCD-show
git clone https://github.com/fredericovn/raspi
chmod -R 755 LCD-show
chmod -R 755 raspi
cd raspi
cp kiosk.service /lib/systemd/system/
systemctl enable kiosk.service
cd ..
cd LCD-show
./MHS35-show
