#!/bin/bash
ssh ubuntu@172.24.38.172 "cd storm-cluster/buildscripts; ./pipeline.sh;"
python -m webbrowser "http://172.24.38.172/dashboard.html"
sleep 1m
./testdriver.sh
#TODO: fault injection..
sleep 15m
./errors.sh
sleep 15m
./logs.sh
