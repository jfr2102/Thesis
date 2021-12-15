#!/bin/bash
source machine_config.sh

scp storm-cluster/buildscripts/copylogs.sh $vm4:/home/ubuntu/copylogs.sh
ssh $vm4 "./copylogs.sh $1;"
scp -r $vm4:/home/ubuntu/kafka-logs/$1 ./kafka-logs/