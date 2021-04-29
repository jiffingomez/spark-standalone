# Apache Spark Standalone Cluster

This image has centos 8, Java 11 and Apache Spark 3.1.1 binary with prebuilt for Hadoop 3.2 or later

## Maintainer
Jiffin Joachim Gomez

## Spark file path

```bash
/opt/spark
```

## To Run Spark Master
```bash
systemctl start spark-master
```
### Optional: You can edit the spark-master system service by editing
```bash
nano /etc/systemd/system/spark-master.service
```

## To Run Spark Slave
```bash
systemctl start spark-slave
```

### Optional: You can edit the spark-slave system service by editing
```bash
nano /etc/systemd/system/spark-slave.service
```

## Additional Options

You can set spark-env, spark-defaults.conf etc to the spark directory and customize your environment

### Sample spark-env for spark-master
```bash
SPARK_MASTER_HOST=0.0.0.0
SPARK_MASTER_PORT=7077
SPARK_DRIVER_CORES=2
SPARK_DRIVER_MEMORY=2g
SPARK_DRIVER_PORT=5001
SPARK_UI_PORT=5002
SPARK_BLOCKMGR_PORT=5003
```

### Sample spark-env for spark-slave
```bash
SPARK_MASTER_HOST=host.docker.internal
SPARK_MASTER_PORT=7077
SPARK_WORKER_CORES=2
SPARK_WORKER_MEMORY=2g
SPARK_DRIVER_PORT=5001
SPARK_UI_PORT=5002
SPARK_BLOCKMGR_PORT=5003
```

## Default Ports

Spark Master Web UI can be accessed from 8080  
Spark Master can be accessed from 7077
Spark Slave Web UI can be accessed from 8081

Please note that you can customize ports according to your need.

### How to run a Spark job

Open the container shell of Spark-Master container, Go to the project folder, by default you will be on project folder, run the below command to submit a spark job
```bash
 /opt/spark/bin/spark-submit filename