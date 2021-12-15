#!/bin/bash
source machine_config.sh
ssh $vm1 "cd storm-cluster/buildscripts; ./copyErrors.sh $1 $2;"
scp -r $vm1:/storm-logs/$1 ./storm-logs/