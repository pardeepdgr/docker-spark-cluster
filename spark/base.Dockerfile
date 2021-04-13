FROM ubuntu:latest

RUN apt-get update && \
	apt-get install -y openjdk-11-jdk && \
	apt-get install -y wget && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* && \
	rm -rf /var/cache/oracle-jdk11-installer;

ENV SPARK_VERSION 3.0.1
ENV HADOOP_VERSION 3.3.0
ENV SPARK_HOME /usr/local/spark
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64
ENV HADOOP_HOME /usr/local/hadoop
ENV HADOOP_CLASSPATH=$HADOOP_CLASSPATH:$HADOOP_HOME/share/hadoop/tools/lib/*

RUN export JAVA_HOME

RUN wget https://archive.apache.org/dist/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-without-hadoop.tgz && \
    tar -xzf spark-${SPARK_VERSION}-bin-without-hadoop.tgz && \
    mv spark-${SPARK_VERSION}-bin-without-hadoop $SPARK_HOME && \
    rm spark-${SPARK_VERSION}-bin-without-hadoop.tgz && \
    export PATH=$SPARK_HOME/bin:$PATH

RUN wget https://archive.apache.org/dist/hadoop/core/hadoop-${HADOOP_VERSION}/hadoop-${HADOOP_VERSION}.tar.gz && \
    tar -xzf hadoop-${HADOOP_VERSION}.tar.gz && \
    mv hadoop-${HADOOP_VERSION} ${HADOOP_HOME} && \
    rm hadoop-${HADOOP_VERSION}.tar.gz && \
    export PATH=$HADOOP_HOME/bin:$PATH
