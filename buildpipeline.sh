#!/bin/bash
ssh ubuntu@172.24.38.172 "cd storm-cluster/buildscripts; ./pipeline.sh;"
python -m webbrowser "http://172.24.38.172/dashboard.html"
python -m webbrowser "http://172.24.38.172:3000/d/sSAtolDnk/prometheus-storm-metrics?orgId=1"
sleep 1m
./testdriver.sh -benchmark 10000000 50 10000 5000
sleep 7m
./chaosTest/delay_one_supervisor.sh $1
#./chaosTest/loss_one_supervisor.sh $1
sleep 7m
#ssh ubuntu@172.24.38.172 "cd storm-cluster/buildscripts; ./deploy_check_topology.sh;"
#sleep 5m
./errors.sh
./logs.sh
python3 fetch-prom-metrics/fetch.py