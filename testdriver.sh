#!/bin/bash
source machine_config.sh
scp storm-cluster/buildscripts/testdriver.sh $vm4:/home/ubuntu/testdriver.sh
ssh $vm4 "/home/ubuntu/testdriver.sh $1 $2 $3 $4 $5;"
echo Running Testdriver with: $1 $2 $3 $4 $5