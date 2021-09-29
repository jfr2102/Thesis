#!/bin/bash
ssh ubuntu@172.24.38.172 "cd storm-cluster; ./pipeline.sh;"
sleep 30s
./testdriver.sh
#TODO: fault injection..
sleep 5m
./logs.sh
