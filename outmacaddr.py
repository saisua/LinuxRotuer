def main():
    file_log = open("hostapd.log",'r').read()

    address = file_log.find("AP-STA-CONNECTED")

    mac = set()

    while address >= 0:
        mac.add(file_log[address+17:address+34])
        address=file_log.find("AP-STA-CONNECTED",address+1)
            

    for addr in mac:
        print(addr)

# For the sake of not using global variables
if __name__ == "__main__":
    main()