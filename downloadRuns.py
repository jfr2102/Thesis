import os
runs = ["2021-12-06_17-29-39_delay_10"]
for run in runs:
    os.system("scp -r ubuntu@172.24.38.175:/home/ubuntu/Thesis/kafka-logs/"+ run + "/ kafka-logs/")
    os.system("scp -r ubuntu@172.24.38.175:/home/ubuntu/Thesis/storm-logs/"+ run + "/ storm-logs/")
    os.system("scp -r ubuntu@172.24.38.175:/home/ubuntu/Thesis/prom-metrics/"+ run + "/ prom-metrics/")
