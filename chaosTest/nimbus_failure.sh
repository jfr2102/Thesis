#!/bin/bash
source ../machine_config.sh
host=$vm1
scp chaosTest/kill_nimbus.sh $host:/home/ubuntu/kill_nimbus.sh
ssh $host "echo killing nimbus on $host;"
echo $(date '+%Y-%m-%d-%H:%M:%S')
ssh $host "./kill_nimbus.sh;"