#!/bin/bash
scp storm-cluster/buildscripts/testdriver.sh ubuntu@172.24.38.174:/home/ubuntu/testdriver.sh
ssh ubuntu@172.24.38.174 "/home/ubuntu/testdriver.sh $1 $2 $3 $4 $5;"
echo Running Testdriver with: $1 $2 $3 $4 $5