#!/bin/bash
ssh ubuntu@172.24.38.174 ./copylogs.sh
scp -r ubuntu@172.24.38.174:/home/ubuntu/kafka-logs .

