python outmacaddr.py > hostapd.deny
sudo /usr/bin/nmap -O -Pn -vv --script smb-os-discovery.nse $(ip neighbor | grep $(/usr/bin/tac ./hostapd.deny |egrep -m 1 .) | cut -d" " -f1 | grep 192.168.2)
