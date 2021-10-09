#!/bin/bash
scp chaosTest/netloss.sh ubuntu@172.24.38.171:/home/ubuntu/netloss.sh
ssh ubuntu@172.24.38.171 ./netloss.sh