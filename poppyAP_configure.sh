#! /bin/bash

# installating software
sudo apt-get update
sudo apt-get install hostapd dnsmas git


#configure interfaces
sudo mv interfaces /etc/network/interfaces 
sudo mv NetworManager.conf /etc/NetworManager/NetworManager.conf
sudo nmcli nm wifi off
sudo rfkill unblock wlan
sudo ifdown wlan2
sudo ifup wlan2

#configure hostapd
wget hostpad.conf
mv hostpad.conf /etc/hostapd/hostapd.conf

# adafruit hack to make driver rtl871xdrv working with hostapd
wget http://adafruit-download.s3.amazonaws.com/adafruit_hostapd_14128.zip
unzip adafruit_hostapd_14128.zip
sudo mv /usr/sbin/hostapd /usr/sbin/hostapd.ORIG
sudo mv hostapd /usr/sbin
sudo chmod 755 /usr/sbin/hostapd
sudo service hostapd start 


#configure dnsmasq
sudo mv dnsmasq.conf /etc/dnsmasq.conf 
sudo service dnsmasq

# Starting daemons
sudo /etc.init.d/hostapd start
sudo /etc.init.d/dnmasq start


