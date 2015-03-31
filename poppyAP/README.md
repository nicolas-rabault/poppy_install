
Installing and configuring Poppy as an Wifi Access Point

It allows you to connect directly in wifi on Poppy with any device. 
Once installed, scan wifi with your computer and connect to the SSID "Poppy"
Once connected, try your browser on http://poppy.local or http://192.168.42.1

It's taylor made for :
- Odroid with ubuntu and the poppy_setup.h done
- Edimax wifi USB adapter (REALTEK RTL8188CUS)

What it does :
- It installs hostapd and dnsmasq 
- It changes your network configuration for the wlan2 interface.


You can download and run it :
```bash
poppy@poppy:~$ curl -L https://raw.githubusercontent.com/Inmediats-Poppy/poppy_install/master/poppyAP/poppyAP_configure.sh | sudo bash
```

Uninstalling :
If for some reasons, you would like to uninstall and restore your previous configuration :
```bash
sudo apt-get update
sudo apt-get remove hostapd dnsmasq
sudo ifdown wlan2
sudo cp /etc/network/interfaces.BAK /etc/network/interfaces
sudo cp /etc/NetworManager/NetworManager.conf.BAK /etc/NetworManager/NetworManager.conf
sudo nmcli nm wifi on
```
