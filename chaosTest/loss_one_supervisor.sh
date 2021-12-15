#!/bin/bash
source ../machine_config.sh

Hosts=($vm1 $vm2 $vm3)
random=`echo $(($RANDOM%3))`
host=`echo ${Hosts[$random]}`
echo $host

scp chaosTest/loss.sh $host:/home/ubuntu/loss.sh
ssh $host "echo 'inserting packet loss [%]:'; echo $1;"
echo $(date '+%Y-%m-%d-%H:%M:%S')
echo Host: $host
ssh $host "./loss.sh $1;"