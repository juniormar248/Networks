#!/bin/bash #This line chooses the interpreter 
#Samuel Martinez #This line is commented out 
#FireWallInfoGrabber #This line is commmented out

U=$USER 

DIR="/home/$U/FirewallInfo" 

if [ ! -d "$DIR" ] 
then
        mkdir FirewallInfo 2>/dev/null 
fi 

DATE=$(date +%d-%m-%Y:%T) 

FN="$DIR/FirewallInfo_"DATE".txt" 

touch $FN
