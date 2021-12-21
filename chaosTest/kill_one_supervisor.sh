#!/bin/bash
source machine_config.sh

Hosts=($vm1 $vm2 $vm3)
random=`echo $(($RANDOM%3))`
host=`echo ${Hosts[$random]}`
echo $host

scp chaosTest/kill_supervisor.sh $host:/home/ubuntu/kill_supervisor.sh
ssh $host "echo 'Killing supervisor:';"
echo $(date '+%Y-%m-%d-%H:%M:%S')
echo Host: $host
ssh $host "./kill_supervisor.sh;"