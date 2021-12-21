#!/bin/bash
source machine_config.sh

Hosts=($vm1 $vm2 $vm3)
random=`echo $(($RANDOM%3))`
host=`echo ${Hosts[$random]}`

scp chaosTest/corrupt.sh $host:/home/ubuntu/corrupt.sh
ssh $host "echo 'corrupting packages:'; echo $1;"
echo $(date '+%Y-%m-%d-%H:%M:%S')
echo Host: $host
ssh $host "./corrupt.sh $1;"