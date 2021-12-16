# Apache Storm Benchmak Driver
Benchmark Apache Storm cluster under failure conditions based on [jfr2102/storm-cluster](https://github.com/jfr2102/storm-cluster) with help of [Pumba](https://github.com/alexei-led/pumba).
## Setup:
- Clone this repository: 
```bash
git clone git@github.com:jfr2102/Thesis.git
```

- Run setup script in driver directory:
```bash
./setup.sh
```
- Configure host adresses of used virtual machines in [machine_config.sh](https://github.com/jfr2102/Thesis/blob/master/machine_config.sh) as key value pairs.
- Configure ssh access between hosts (add ssh public key of driver machine to authorized_hosts on required machines)
- Configure [prom-metrics-fetcher](https://github.com/jfr2102/fetch-prom-metrics) as decribed.

## Usage:
- Recommended: run in "background":
```bash
nohup ./buildpipeline delay 100 &
```
- e.g: run sets of experiments by groups of 4
```bash
nohup ./run_4_times.sh batch_identifier &
```
#### Buildpipeline Arguments: 
  - ./buildpipeline delay *delay_time_ms*: Pumba delay on one randomly chosen supervisor container
  - ./buldpipeline loss *loss_percentage*: Pumba package loss on one randomly chosen supervisor container
#### Testdriver Arguments:
  - vary data generation rate by editing the ./testdriver call (see [kafka-generator](https://github.com/jfr2102/kafka-generator))
```bash
./testdriver.sh -benchmark 1250000 10 10000 50
```
- vary buildpipline.sh sleep times according to number of messages, event-rate or other needs