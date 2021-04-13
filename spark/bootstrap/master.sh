#!/usr/bin/env bash

mkdir /tmp/spark-events
echo SPARK_DIST_CLASSPATH=$(/usr/local/hadoop/bin/hadoop classpath) > /usr/local/spark/conf/spark-env.sh

echo STARTING HISTORY SERVER PROCESS
/usr/local/spark/sbin/start-history-server.sh

echo STARTING MASTER PROCESS
SPARK_NO_DAEMONIZE=true /usr/local/spark/sbin/start-master.sh
