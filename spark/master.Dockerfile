FROM docker-spark-cluster_spark-base:latest

ADD /spark/bootstrap/master.sh /master.sh
RUN chown root:root /master.sh
RUN chmod 700 /master.sh

ENTRYPOINT ["/master.sh"]

EXPOSE 8080