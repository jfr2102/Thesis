#!/bin/bash
scp chaosTest/loss.sh ubuntu@172.24.38.172:/home/ubuntu/loss.sh
ssh ubuntu@172.24.38.172 "echo 'inserting packet loss [%]:'; echo $1;"
echo `date`
ssh ubuntu@172.24.38.172 "./loss.sh $1;"