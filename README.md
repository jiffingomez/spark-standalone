# Apache Saprk Standalone cluster with Docker

### To Build the application, run the below command

PS: Run the below command where the docker-compose.yml file is located
```bash
docker-compose up --build -d
```

### To Stop the application and remove the container, run the below command

```bash
docker-compose down
```

### Spark Master 

Spark Master Web UI: 8080  
Spark Master: 7077

### Spark Slave
Spark Slave Web UI: 8081
If spark Slave Web UI is not accessible, Do the following:

To check Spark Slave is running, run the below command in Spark-Slave container

```bash
systemctl start spark-slave
```

If spark slave is disabled, then run the below command in the Spark-Slave container
```bash
./home/start.sh
```
Now, check the spark slave is running in port 8081, 8082

### How to run a Spark job

Open the container shell of Spark-Master container, Go to the project folder, by default you will be on project folder, run the below command to submit a spark job
```bash
 /opt/spark/bin/spark-submit filename
```

eg: to submit yearly job
```bash
 /opt/spark/bin/spark-submit Yearly_Job.py
```

You can view the progress in the shell and on the spark web UI, which will be running on port 8080 for spark master and for spark slave on port 8081 and 8082.
