#!/bin/sh

echo "Starting init services";
echo "Start Spark slave services";
systemctl daemon-reload
systemctl start spark-slave
systemctl enable spark-slave
systemctl status spark-slave


