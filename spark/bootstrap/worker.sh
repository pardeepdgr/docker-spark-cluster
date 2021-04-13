#!/usr/bin/env bash

echo SPARK_DIST_CLASSPATH=$(/usr/local/hadoop/bin/hadoop classpath) > /usr/local/spark/conf/spark-env.sh

echo STARTING WORKER PROCESS
SPARK_NO_DAEMONIZE=true /usr/local/spark/sbin/start-slave.sh spark://spark-master:7077
