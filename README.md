# docker-spark-cluster
```docker-spark-cluster```  creates Kafka and Spark cluster (master and worker nodes are running on separate containers) on Hadoop. These container can communicate and stores data in external volumes.

# Why on Container?
- [x] Can reduce cost (check application behavior locally before running it in the cloud)
- [x] No more setup hassle on local machine
- [x] Easy of use

# Run
> docker-compose -f docker-compose.yml up -d
