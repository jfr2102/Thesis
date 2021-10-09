#!/bin/bash
ssh ubuntu@172.24.38.172 "cd storm-cluster/buildscripts; ./pipeline.sh;"
python -m webbrowser "http://vm.johannes-friedlein.de/dashboard.html"
sleep 1m
./testdriver.sh
#TODO: fault injection..
sleep 30m
./logs.sh
