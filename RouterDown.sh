if [ ! -z "$(ifconfig | grep wlan1mon)" ]  
then
    sudo airmon-ng stop wlan1mon
fi
sudo pkill -f hostapd
sudo pkill -f dnsmasq
sudo pkill -f freeradius
sudo fuser 12411/tcp
sudo fuser 12410/tcp