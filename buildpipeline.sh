#!/bin/bash
ssh ubuntu@172.24.38.172 "cd storm-cluster/buildscripts; ./pipeline.sh;"
python -m webbrowser "http://172.24.38.172/dashboard.html"
python -m webbrowser "http://172.24.38.172:3000/d/sSAtolDnk/prometheus-storm-metrics?orgId=1"
sleep 1m
#./testdriver.sh -benchmark 2000000 50 10000 500
#./testdriver.sh -benchmark 1000000 50 10000 250
./testdriver.sh -benchmark 4000000 50 10000 1000
sleep 6m
./chaosTest/delay_one_supervisor.sh $2
#./chaosTest/loss_one_supervisor.sh $2
#sleep 5m
#ssh ubuntu@172.24.38.172 "cd storm-cluster/buildscripts; ./deploy_check_topology.sh;"
#sleep 5m
./errors.sh $1 $2
./logs.sh $1 $2
python3 fetch-prom-metrics/fetch.py