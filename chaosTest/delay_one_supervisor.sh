#!/bin/bash
Hosts=(172.24.38.172 172.24.38.173 172.24.38.176)
random=`echo $(($RANDOM%3))`
host=`echo ${Hosts[$random]}`

scp chaosTest/delay.sh ubuntu@$host:/home/ubuntu/delay.sh
ssh ubuntu@$host "echo 'inserting delay [ms]:'; echo $1;"
echo $(date '+%Y-%m-%d-%H:%M:%S')
echo Host: $host
ssh ubuntu@$host "./delay.sh $1;"