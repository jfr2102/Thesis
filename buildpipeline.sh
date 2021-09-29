#!/bin/bash
ssh ubuntu@172.24.38.172 "cd storm-cluster/buildscripts; ./pipeline.sh;"
sleep 1m
./testdriver.sh
#TODO: fault injection..
sleep 10m
./logs.sh
