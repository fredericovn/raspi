sudo apt-get update
sudo apt-get upgrade
cd /home/pi
sudo rm -rf LCD-show
git clone https://github.com/Lcdwiki/LCD-show
git clone https://github.com/fredericovn/raspi
chmod -R 755 LCD-show
chmod 775 kiosk*
sudo cp kiosk.service /lib/systemd/system/
sudo systemctl enable kiosk.service
reboot