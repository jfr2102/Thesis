#!/bin/bash
echo \# 10MS_Grob_Rerun >> ThroughputRuns.txt
# ./throughput_run.sh throughput_sustainable_6_emitter_10ms_sleep 1
# ./throughput_run.sh throughput_sustainable_6_emitter_10ms_sleep 2
# ./throughput_run.sh throughput_sustainable_6_emitter_10ms_sleep 3
# ./throughput_run.sh throughput_sustainable_6_emitter_10ms_sleep 4

./throughput_run.sh throughput_sustainable_6_emitter_10ms_sleep_local_shuffle_grob 1 10 -grob
./throughput_run.sh throughput_sustainable_6_emitter_10ms_sleep_local_shuffle_grob 2 10 -grob
./throughput_run.sh throughput_sustainable_6_emitter_10ms_sleep_local_shuffle_grob 3 10 -grob
./throughput_run.sh throughput_sustainable_6_emitter_10ms_sleep_local_shuffle_grob 4 10 -grob
#  wait 5m
# ./throughput_run.sh throughput_sustainable_6_emitter_10ms_sleep_local_shuffle_granular 1 10 -granular
# ./throughput_run.sh throughput_sustainable_6_emitter_10ms_sleep_local_shuffle_granular 2 10 -granular
# ./throughput_run.sh throughput_sustainable_6_emitter_10ms_sleep_local_shuffle_granular 3 10 -granular
# ./throughput_run.sh throughput_sustainable_6_emitter_10ms_sleep_local_shuffle_granular 4 10 -granular
# wait 5m
# ./throughput_run.sh throughput_sustainable_6_emitter_25ms_sleep_local_shuffle_grob 1 25 -grob
# ./throughput_run.sh throughput_sustainable_6_emitter_25ms_sleep_local_shuffle_grob 2 25 -grob
# ./throughput_run.sh throughput_sustainable_6_emitter_25ms_sleep_local_shuffle_grob 3 25 -grob
# ./throughput_run.sh throughput_sustainable_6_emitter_25ms_sleep_local_shuffle_grob 4 25 -grob
# wait 5m
# ./throughput_run.sh throughput_sustainable_6_emitter_25ms_sleep_local_shuffle_granular 1 25 -granular
# ./throughput_run.sh throughput_sustainable_6_emitter_25ms_sleep_local_shuffle_granular 2 25 -granular
# ./throughput_run.sh throughput_sustainable_6_emitter_25ms_sleep_local_shuffle_granular 3 25 -granular
# ./throughput_run.sh throughput_sustainable_6_emitter_25ms_sleep_local_shuffle_granular 4 25 -granular