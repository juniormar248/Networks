#!/bin/bash 
#Samuel Martinez 
#Networks QT 5 
echo Enter "(1)" Block host
echo Enter "(2)" Allow host 
echo Enter "(3)" Block MAC 
Echo Enter "(4)" Allow MAC 
echo Enter (5)" echo Enter "(6)" 
echo Answer: 
read num 
if [ $num=="1" ] 
then 
     echo Enter the host address you would like to Block 
     echo "Hostname:"
     read host 
     sudo iptables -A INPUT -S $host -j REJECT 
     sudo iptables -L 
elif [ $num=="2" ] 
then
     echo Enter the host address you would like to Allow 
     echo "Hostname:" 
     read host 
     sudo iptables -A INPUT -s shost -j ACCEPT 
     sudo iptables -L 
elif [ $num=="3" ] 
then
     echo Enter the mac address you would like to Block 
     echo "Mac Address: 
     read mac 
     sudo iptables -A INPUT -m mac --mac-source $mac -j REJECT 
     sudo iptables -L 
elif [ $num=-"4" ] 
then 
     echo Enter the mac address you would like to Allow 
     echo "Mac Address: 
     read mac 
     sudo iptables -A INPUT -m mac --mac-source $mac -j ACCEPT 
     sudo iptables -L 
elif [ $num=="5" ] 
then 
     sudo iptables -A INPUT -p tcp --dport 23 - REJECT 
     echo Telnet port 23 is blocked 
elif [ Snun="6" ] 
then 
     sudo iptables -A INPUT -p tcp --dport 7 - REJECT 
else     
     echo Not a valid entry
fi
