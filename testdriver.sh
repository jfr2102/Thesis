#!/bin/bash
scp storm-cluster/buildscripts/testdriver.sh ubuntu@172.24.38.174:/home/ubuntu/testdriver.sh
ssh ubuntu@172.24.38.174 /home/ubuntu/testdriver.sh
