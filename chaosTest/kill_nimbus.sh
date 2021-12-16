#!/bin/bash
nimbus=`docker ps --format '{{.Names}}' -f name=nimbus`
echo $nimbus
pumba kill re2:$nimbus.*