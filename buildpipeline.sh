#!/bin/bash
source machine_config.sh

destination=`date +"%Y-%m-%d_%H-%M-%S"`_$1_$2
echo $destination
ssh ubuntu@172.24.38.172 "cd storm-cluster/buildscripts; ./pipeline.sh;"
# #python -m webbrowser "http://172.24.38.172/dashboard.html"
# python -m webbrowser "http://172.24.38.172:3000/d/sSAtolDnk/prometheus-storm-metrics?orgId=1"
sleep 2m
./testdriver.sh -benchmark 1250000 10 10000 50
#./testdriver.sh -benchmark 2500000 10 10000 100
#./testdriver.sh -benchmark 5000000 10 10000 200
#./testdriver.sh -benchmark 10000000 10 10000 400
#./testdriver.sh -benchmark 15000000 10 10000 600
#./testdriver.sh -benchmark 20000000 10 10000 800

#./testdriver.sh -throughput
sleep 9m
fault_start=`date +"%Y-%m-%d-%H-%M-%S"`
./chaosTest/$1_one_supervisor.sh $2
fault_end=`date +"%Y-%m-%d-%H-%M-%S"`
sleep 5m
./errors.sh $destination KafkaTopology
ssh ubuntu@172.24.38.172 "cd storm-cluster/buildscripts; ./deploy_check_topology.sh;"
sleep 5m
./errors.sh $destination CheckTopology #$1 $2
./logs.sh $destination #$1 $2
python3 fetch-prom-metrics/fetch.py $destination
echo "failure_start;failure_end;" >> kafka-logs/$destination/testdriverinfo.txt
echo "$fault_start;$fault_end;" >> kafka-logs/$destination/testdriverinfo.txt
echo "$destination" , >> runs.txt
sleep 5m