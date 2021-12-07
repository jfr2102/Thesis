./errors.sh $1 
./logs.sh $1
python3 fetch-prom-metrics/fetch.py $1