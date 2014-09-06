# Very simple script for testing connectivity and diagnose internet connection
# Mosab Ahmad <mosab.ahmad@gmail.com>

# TODO :
#   1. Check if "figlet" is installed before using it in the script.
#   2. Dynamically get the gateway instead of having it hardcoded.
#   3. Add a list of static IP addresses, so if the first one fails because of
#      Server downtime rather than connectivity it should check the rest of the 
#      list before judging that the internet is down.
#   4. Make the script interactive.



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
#ping 209.85.229.105 -c 4
ping 173.194.35.35 -c 4
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
