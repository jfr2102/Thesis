#!/bin/bash
scp chaosTest/delay.sh ubuntu@172.24.38.172:/home/ubuntu/delay.sh
ssh ubuntu@172.24.38.172 "echo 'inserting delay [ms]:'; echo $1;"
ssh ubuntu@172.24.38.172 "./delay.sh $1;"