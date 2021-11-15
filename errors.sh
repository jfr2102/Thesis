#!/bin/bash
ssh ubuntu@172.24.38.172 "cd storm-cluster/buildscripts; ./copyErrors.sh $1;"
scp -r ubuntu@172.24.38.172:/storm-logs/$1 ./storm-logs/