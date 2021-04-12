#!/bin/bash 
echo Now Denying SSH connections
echo ....
sleep 5 sudo iptables -A OUTPUT -p tcp --dport ssh -j REJECI
