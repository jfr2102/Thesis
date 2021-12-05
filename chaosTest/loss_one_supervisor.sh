#!/bin/bash
Hosts=(172.24.38.172 172.24.38.173 172.24.38.176)
random=`echo $(($RANDOM%3))`
host=`echo ${Hosts[$random]}`
echo $host

scp chaosTest/loss.sh ubuntu@$host:/home/ubuntu/loss.sh
ssh ubuntu@$host "echo 'inserting packet loss [%]:'; echo $1;"
echo $(date '+%Y-%m-%d-%H:%M:%S')
echo Host: $host
ssh ubuntu@$host "./loss.sh $1;"