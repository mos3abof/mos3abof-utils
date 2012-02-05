# Very simple script to change my DNS to open DNS instead of relying on TEDATA  || LINKDSL f*** DNS!!
# Mosab Ahmad <mosab.ahmad@gmail.com>

# enter primariy DNS and OVERRIDE the existing /etc/resolv.conf file
echo "nameserver 208.67.222.222" > /etc/resolv.conf
# Append sceondary DNS to the file
echo "nameserver 208.67.220.220" >> /etc/resolv.conf

# reporting back to user what happened
echo "Changes to DNS applied successfully, new /etc/resolv.conf file is :"
# printing the file to user
more /etc/resolv.conf
