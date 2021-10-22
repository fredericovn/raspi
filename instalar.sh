#! /bin/sh
rm -rf LCD-show
git clone https://github.com/Lcdwiki/LCD-show
chmod -R 755 LCD-show
sudo cp kiosk.sh /home/pi
sudo cp kiosk.service /lib/systemd/system/
sudo systemctl enable kiosk.service
cd LCD-show
./MHS35-show
