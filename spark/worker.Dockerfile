FROM docker-spark-cluster_spark-base:latest

ENV SPARK_WORKER_WEBUI_PORT 8081

ADD /spark/bootstrap/worker.sh /worker.sh
RUN chown root:root /worker.sh
RUN chmod 700 /worker.sh

ENTRYPOINT ["/worker.sh"]

EXPOSE 8081
