#!bin/bash
#sleep for a little to make sure that the namenode starts up and exits safemode
sleep 30

hadoop fs -mkdir data
hadoop fs -put /data/sentences.txt.gz data/
hadoop fs -put /data/enron_small.json.gz data/

spark-shell
