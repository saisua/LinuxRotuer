file_log = open("hostapd.log",'r').read()
address = 0
mac = set()
while address >= 0:
    address=file_log.find("AP-STA-CONNECTED",address)
    if address >= 0:
        mac.add(file_log[address+17:address+34])
        address += 1

for addr in mac:
    print(addr)
