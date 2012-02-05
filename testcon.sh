# Very simple script to test connectivity to simply diagnose internet connection
# Mosab Ahmad <mosab.ahmad@gmail.com>

# Print current /etc/resolv.conf to user
echo "+++++++++++++++++++++++++++++++++++++"
echo "| Current  '/etc/resolv.conf' file  |"
echo "+++++++++++++++++++++++++++++++++++++"
echo ""
more /etc/resolv.conf
echo ""
echo ""

# Ping the Gateway
echo "+++++++++++++++++++"
echo "| Pinging Gateway |"
echo "+++++++++++++++++++"
echo ""
ping 192.168.1.1 -c 4
echo ""
echo ""


# Ping Slicehost to check Connection without DNS 
echo "++++++++++++++++++++++++++++++++++++++++++++++"
echo "| Checking Connection without DNS resolution |"
echo "++++++++++++++++++++++++++++++++++++++++++++++"
echo ""
#ping 184.106.200.233 -c 4
ping 209.85.229.105 -c 4
echo ""
echo ""


# Ping Google.com to check DNS resolution
echo "+++++++++++++++++++++++++++++++++++++++++++"
echo "| Checking connection with DNS resolution |"
echo "+++++++++++++++++++++++++++++++++++++++++++"
echo ""
ping google.com -c 4
echo ""
echo ""
figlet Done
