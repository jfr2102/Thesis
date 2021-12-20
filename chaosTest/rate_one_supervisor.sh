#!/bin/bash
source machine_config.sh

Hosts=($vm1 $vm2 $vm3)
random=`echo $(($RANDOM%3))`
host=`echo ${Hosts[$random]}`

scp chaosTest/rate.sh $host:/home/ubuntu/rate.sh
ssh $host "echo 'limiting rate:'; echo $1$2;"
echo $(date '+%Y-%m-%d-%H:%M:%S')
echo Host: $host
ssh $host "./rate.sh $1$2;"