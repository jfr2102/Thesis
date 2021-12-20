#!/bin/bash
source machine_config.sh

Hosts=($vm1 $vm2 $vm3)
random=`echo $(($RANDOM%3))`
host=`echo ${Hosts[$random]}`

scp chaosTest/delay.sh $host:/home/ubuntu/delay.sh
ssh $host "echo 'inserting delay [ms]:'; echo $1;"
echo $(date '+%Y-%m-%d-%H:%M:%S')
echo Host: $host
ssh $host "./delay.sh $1;"