#!/bin/bash
source machine_config.sh

destination=`date +"%Y-%m-%d_%H-%M-%S"`_$1_$2
echo $destination
ssh $vm1 "cd storm-cluster/buildscripts; ./pipeline.sh;"
sleep 2m
./testdriver.sh -throughput $3 $4
sleep 40m
./errors.sh $destination
./logs.sh $destination
python3 fetch-prom-metrics/fetch.py $destination
echo $destination >> ThroughputRuns.txt