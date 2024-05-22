# Kafka and Zookeeper
FROM alpine:3.20

ARG APK_OPENJDK8_VERSION=~8
ARG APK_SUPERVISOR_VERSION=~4
ARG APK_BASH_VERSION=~5
ARG APK_GCOMPAT_VERSION=~1

RUN apk add --no-cache --update \
    "openjdk8-jre=${APK_OPENJDK8_VERSION}" \
    "supervisor=${APK_SUPERVISOR_VERSION}" \
    "bash=${APK_BASH_VERSION}" \
    "gcompat=${APK_GCOMPAT_VERSION}"

ARG ZOOKEEPER_VERSION=3.4.13

ENV ZOOKEEPER_HOME /opt/zookeeper-"$ZOOKEEPER_VERSION"
ENV ZOOKEEPER_DOWNLOAD_URL https://archive.apache.org/dist/zookeeper/zookeeper-"$ZOOKEEPER_VERSION"/zookeeper-"$ZOOKEEPER_VERSION".tar.gz

RUN wget -q $ZOOKEEPER_DOWNLOAD_URL -O /tmp/zookeeper-"$ZOOKEEPER_VERSION".tgz
RUN tar xfz /tmp/zookeeper-"$ZOOKEEPER_VERSION".tgz -C /opt && rm /tmp/zookeeper-"$ZOOKEEPER_VERSION".tgz
COPY assets/conf/zoo.cfg $ZOOKEEPER_HOME/conf

ARG SCALA_VERSION=2.13

ARG KAFKA_VERSION=3.4.0

ENV KAFKA_HOME /opt/kafka_"$SCALA_VERSION"-"$KAFKA_VERSION"
ENV KAFKA_DOWNLOAD_URL https://archive.apache.org/dist/kafka/"$KAFKA_VERSION"/kafka_"$SCALA_VERSION"-"$KAFKA_VERSION".tgz

RUN wget -q $KAFKA_DOWNLOAD_URL -O /tmp/kafka_"$SCALA_VERSION"-"$KAFKA_VERSION".tgz
RUN tar xfz /tmp/kafka_"$SCALA_VERSION"-"$KAFKA_VERSION".tgz -C /opt && rm /tmp/kafka_"$SCALA_VERSION"-"$KAFKA_VERSION".tgz

COPY assets/scripts/start-kafka.sh /usr/bin/start-kafka.sh
COPY assets/scripts/start-zookeeper.sh /usr/bin/start-zookeeper.sh

# Supervisor config
COPY assets/supervisor/kafka.ini assets/supervisor/zookeeper.ini /etc/supervisor.d/

# 2181 is zookeeper, 9092 is kafka
EXPOSE 2181 9092

CMD ["supervisord", "-n"]
