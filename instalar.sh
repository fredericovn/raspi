#! /bin/sh
cd /home/pi
rm -rf LCD-show
git clone https://github.com/Lcdwiki/LCD-show
chmod -R 755 LCD-show
chmod -R 755 raspi
cd raspi
sudo cp kiosk.sh home.pi
sudo cp kiosk.service /lib/systemd/system/
sudo systemctl enable kiosk.service
cd..
cd LCD-show
./MHS35-show
