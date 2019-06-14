#Router setup
if [ ! -z "$(ifconfig | grep wlan1)" ]
then
    sudo airmon-ng start wlan1
    sudo ifconfig wlan1 192.168.3.0
    sudo sh -c " echo 1 > /proc/sys/net/ipv4/ip_forward"
    sudo ip neighbor flush all
    # Pensar modificar arxiu wlan1 > $1,$2...
    sudo freeradius -p 12411 -i 192.168.2.0 -d ./3.0/
    sudo dnsmasq -C dnsmasq.conf --dumpfile=dnmasq.log #-a 192.168.0.2
    echo Starting router...
    sudo hostapd -B -t -f hostapd.log hostapd.conf
fi
if [ ! -z "$(ifconfig | grep wlan2)" ]  
then
    echo Starting honeypot...
    sudo hostapd_cli -a 'sh honeypot.sh' -i wlan2
fi
# = ' " ]  




  