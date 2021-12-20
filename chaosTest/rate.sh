#!/bin/bash
container=`docker ps --format '{{.Names}}' -f name=supervisor`
echo $container
random=`echo $(($RANDOM%2+1))`
supervisor=`echo $container | cut -d " " -f $random`
echo $supervisor
pumba netem --duration 11m rate re2:$supervisor.* -r $1$2
#re2:.*supervisor.*