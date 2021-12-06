import os
runs = ["2021-12-05_23-15-15_delay_10",
"2021-12-05_23-34-20_delay_10",
"2021-12-05_23-53-24_delay_10",
"2021-12-06_00-12-29_delay_10",
"2021-12-06_00-31-30_delay_20",
"2021-12-06_00-50-37_delay_20",
"2021-12-06_01-09-42_delay_20",
"2021-12-06_01-28-45_delay_20",
"2021-12-06_01-47-50_delay_50",
"2021-12-06_02-06-57_delay_50",
"2021-12-06_02-26-03_delay_50",
"2021-12-06_02-45-05_delay_50",
"2021-12-06_03-04-10_delay_100",
"2021-12-06_03-23-15_delay_100",
"2021-12-06_03-42-19_delay_100",
"2021-12-06_04-01-20_delay_100",
"2021-12-06_04-20-19_delay_200",
"2021-12-06_04-39-21_delay_200",
"2021-12-06_04-58-23_delay_200",
"2021-12-06_05-17-23_delay_200"]
for run in runs:
    os.system("scp -r ubuntu@172.24.38.175:/home/ubuntu/Thesis/kafka-logs/"+ run + "/ kafka-logs-dl/")
    os.system("scp -r ubuntu@172.24.38.175:/home/ubuntu/Thesis/storm-logs/"+ run + "/ storm-logs-dl/")
    os.system("scp -r ubuntu@172.24.38.175:/home/ubuntu/Thesis/prom-metrics/"+ run + "/ prom-metrics-dl/")
