#!/bin/bash
ssh ubuntu@172.24.38.172 "cd storm-cluster/buildscripts; ./copyErrors.sh;"
scp -r ubuntu@172.24.38.172:/storm-logs .
