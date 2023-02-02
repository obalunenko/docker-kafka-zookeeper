# Docker Kafka & Zookeeper

> 📦 Docker image bundling Kafka & Zookeeper into a single container, powered by docker bake to support different versions of Kafka and zookeeper.

Forked from [hey-johnnypark/docker-kafka-zookeeper](https://github.com/hey-johnnypark/docker-kafka-zookeeper).

## Optional ENV variables:
 * AUTO_CREATE_TOPICS: Enable/disable auto creation of topics
 * ADVERTISED_HOST: the external ip for the container, e.g. `docker-machine ip \`docker-machine active\`` sets Kafka Broker config advertised.listeners to PLAINTEXT://[ADVERTISED_HOST]
 * ADVERTISED_PORT: the external port for Kafka, e.g. 9092
 * ZK_CHROOT: the zookeeper chroot that's used by Kafka (without / prefix), e.g. "kafka"
 * LOG_RETENTION_HOURS: the minimum age of a log file in hours to be eligible for deletion (default is 168, for 1 week)
 * LOG_RETENTION_BYTES: configure the size at which segments are pruned from the log, (default is 1073741824, for 1GB)
 * NUM_PARTITIONS: configure the default number of log partitions per topic

## Kafka Versions

### latest

`docker pull ghcr.io/obalunenko/docker-kafka-zookeeper:latest`

KAFKA_VERSION 3.3.1

ZOOKEEPER_VERSION 3.4.13

SCALA_VERSION 2.13

### stable

`docker pull ghcr.io/obalunenko/docker-kafka-zookeeper:stable`

KAFKA_VERSION 3.3.1

ZOOKEEPER_VERSION 3.4.13

SCALA_VERSION 2.13


### v3.3.1

`docker pull ghcr.io/obalunenko/docker-kafka-zookeeper:v3.3.1`

KAFKA_VERSION 3.3.1

ZOOKEEPER_VERSION 3.4.13

SCALA_VERSION 2.13

### v3.2.0

`docker pull ghcr.io/obalunenko/docker-kafka-zookeeper:v3.2.0`

KAFKA_VERSION 3.2.0

ZOOKEEPER_VERSION 3.4.13

SCALA_VERSION 2.13


### v2.8.2

`docker pull ghcr.io/obalunenko/docker-kafka-zookeeper:v2.8.2`

KAFKA_VERSION 2.8.2

ZOOKEEPER_VERSION 3.4.13

SCALA_VERSION 2.13


### v2.7.0

`docker pull ghcr.io/obalunenko/docker-kafka-zookeeper:v2.7.0`

KAFKA_VERSION 2.7.0

ZOOKEEPER_VERSION 3.4.13

SCALA_VERSION 2.13


### v2.6.0

`docker pull ghcr.io/obalunenko/docker-kafka-zookeeper:v2.6.0`

KAFKA_VERSION 2.6.0

ZOOKEEPER_VERSION 3.4.13

SCALA_VERSION 2.13


## Docker pool instuctions

https://github.com/obalunenko/docker-kafka-zookeeper/pkgs/container/docker-kafka-zookeeper
