#Router setup
sudo airmon-ng start wlan1
sudo ifconfig wlan1mon down
sudo ifconfig wlan1mon 192.168.2.0
sudo ifconfig wlan1mon up
sudo sh -c " echo 1 > /proc/sys/net/ipv4/ip_forward"
sudo ip neighbor flush all
sudo dnsmasq -C dnsmasq.conf
sudo hostapd -B -t -f hostapd.log hostapd.conf
sudo hostapd_cli -a 'sudo sh honeypot.sh' 
#
