#!/bin/bash
ssh ubuntu@172.24.38.172 "cd storm-cluster/buildscripts; ./copyErrors.sh $1 $2;"
scp -r ubuntu@172.24.38.172:/storm-logs .
