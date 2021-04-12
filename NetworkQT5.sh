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

     [ $num=="3" ] echo Enter the mac address you would like to Block echo "Mac Address: read mac sudo iptables -A INPUT -m mac --mac-source Smac - REJECT sudo iptables -L ADR ADR Block Telnet Block Ping elif [ then elif [ then elif [ Snue="4"]
elif t snus"4"] then echo Enter the mac address you would like to Allow echo "Mac Address: read mac sudo iptables sudo iptables -L -A INPUT -m mac --mac-source $mac -j ACCEPT elif ( snun="5" ] then sudo iptables -A INPUT -p tcp --dport 23 - REJECT echo Telnet port 23 is blocked elif [ Snun="6" ] then else sudo iptables -A INPUT -p tcp --dport 7 - REJECT fi echo Not a valid entry
