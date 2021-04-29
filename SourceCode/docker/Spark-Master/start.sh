#!/bin/sh

echo "Start Spark services";
systemctl daemon-reload
systemctl start spark-master
systemctl enable spark-master
systemctl status spark-master

