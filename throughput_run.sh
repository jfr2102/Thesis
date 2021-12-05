#!/bin/bash
destination=`date +"%Y-%m-%d_%H-%M-%S"`_$1_$2
echo $destination
ssh ubuntu@172.24.38.172 "cd storm-cluster/buildscripts; ./pipeline.sh;"
#python -m webbrowser "http://172.24.38.172/dashboard.html"
python -m webbrowser "http://172.24.38.172:3000/d/sSAtolDnk/prometheus-storm-metrics?orgId=1"
sleep 2m
./testdriver.sh -throughput $3 $4
fault_start=`date +"%Y-%m-%d-%H-%M-%S"`
fault_end=`date +"%Y-%m-%d-%H-%M-%S"`
sleep 40m
#ssh ubuntu@172.24.38.172 "cd storm-cluster/buildscripts; ./deploy_check_topology.sh;"
#sleep 30m
./errors.sh $destination #$1 $2
./logs.sh $destination #$1 $2
python3 fetch-prom-metrics/fetch.py $destination
echo "failure_start;failure_end;" >> kafka-logs/$destination/testdriverinfo.txt
echo "$fault_start;$fault_end;" >> kafka-logs/$destination/testdriverinfo.txt
echo $destination >> ThroughputRuns.txt