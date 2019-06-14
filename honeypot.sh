python outmacaddr.py > hostapd.deny
/usr/bin/nmap -Pn --script smb-os-discovery.nse $(ip neighbor | grep $(/usr/bin/tac ./hostapd.deny |egrep -m 1 .) | cut -d" " -f1 | grep 192.168.2)
