#!/bin/bash
container=`docker ps --format '{{.Names}}' -f name=supervisor`
echo $container
random=`echo $(($RANDOM%2+1))`
supervisor=`echo $container | cut -d " " -f $random`
echo $supervisor
pumba netem --duration 7m delay re2:$supervisor.* -t $1 -j 0
#re2:.*supervisor.*