FROM jiffingomez/centos-spark-base:v1
MAINTAINER Jiffin Gomez

COPY /start.sh /home/
RUN chmod +x /home/start.sh

COPY /spark-env.sh /opt/spark/conf
COPY /spark-defaults.conf /opt/spark/conf

ENTRYPOINT ["/usr/sbin/init"]

CMD ["/home/start.sh"]

WORKDIR "/home/applications/ReflexDinerAnalytics"
