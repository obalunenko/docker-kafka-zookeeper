# Docker Kafka & Zookeeper

> 📦 Docker image bundling Kafka & Zookeeper into a single container, powered by docker bake to support different
> versions of Kafka and zookeeper.

Forked from [hey-johnnypark/docker-kafka-zookeeper](https://github.com/hey-johnnypark/docker-kafka-zookeeper).

## Optional ENV variables:

* AUTO_CREATE_TOPICS: Enable/disable auto creation of topics
* ADVERTISED_HOST: the external ip for the container, e.g. `docker-machine ip \`docker-machine active\`` sets Kafka
  Broker config advertised.listeners to PLAINTEXT://[ADVERTISED_HOST]
* ADVERTISED_PORT: the external port for Kafka, e.g. 9092
* ZK_CHROOT: the zookeeper chroot that's used by Kafka (without / prefix), e.g. "kafka"
* LOG_RETENTION_HOURS: the minimum age of a log file in hours to be eligible for deletion (default is 168, for 1 week)
* LOG_RETENTION_BYTES: configure the size at which segments are pruned from the log (default is 1073741824, for 1GB)
* NUM_PARTITIONS: configure the default number of log partitions per topic

## Docker pool instructions

https://github.com/obalunenko/docker-kafka-zookeeper/pkgs/container/docker-kafka-zookeeper

## Kafka Versions

All versions listed on https://kafka.apache.org/downloads

### latest

`docker pull ghcr.io/obalunenko/docker-kafka-zookeeper:latest`

KAFKA_VERSION 3.8.1

ZOOKEEPER_VERSION 3.4.13

SCALA_VERSION 2.13

### stable

`docker pull ghcr.io/obalunenko/docker-kafka-zookeeper:stable`

KAFKA_VERSION 3.7.1

ZOOKEEPER_VERSION 3.4.13

SCALA_VERSION 2.13

### v3.8.1

`docker pull ghcr.io/obalunenko/docker-kafka-zookeeper:v3.8.1`

KAFKA_VERSION 3.8.1

ZOOKEEPER_VERSION 3.4.13

SCALA_VERSION 2.13

### v3.7.1

`docker pull ghcr.io/obalunenko/docker-kafka-zookeeper:v3.7.1`

KAFKA_VERSION 3.7.1

ZOOKEEPER_VERSION 3.4.13

SCALA_VERSION 2.13

### v3.6.2

`docker pull ghcr.io/obalunenko/docker-kafka-zookeeper:v3.6.2`

KAFKA_VERSION 3.6.2

ZOOKEEPER_VERSION 3.4.13

SCALA_VERSION 2.13

### v3.5.2

`docker pull ghcr.io/obalunenko/docker-kafka-zookeeper:v3.5.2`

KAFKA_VERSION 3.5.2

ZOOKEEPER_VERSION 3.4.13

SCALA_VERSION 2.13

### v3.4.1

`docker pull ghcr.io/obalunenko/docker-kafka-zookeeper:v3.4.1`

KAFKA_VERSION 3.4.1

ZOOKEEPER_VERSION 3.4.13

SCALA_VERSION 2.13

### v3.3.2

`docker pull ghcr.io/obalunenko/docker-kafka-zookeeper:v3.3.2`

KAFKA_VERSION 3.3.2

ZOOKEEPER_VERSION 3.4.13

SCALA_VERSION 2.13

### v3.2.3

`docker pull ghcr.io/obalunenko/docker-kafka-zookeeper:v3.2.3`

KAFKA_VERSION 3.2.3

ZOOKEEPER_VERSION 3.4.13

SCALA_VERSION 2.13

### v3.1.2

`docker pull ghcr.io/obalunenko/docker-kafka-zookeeper:v3.1.2`

KAFKA_VERSION 3.1.2

ZOOKEEPER_VERSION 3.4.13

SCALA_VERSION 2.13

### v3.0.2

`docker pull ghcr.io/obalunenko/docker-kafka-zookeeper:v3.0.2`

KAFKA_VERSION 3.0.2

ZOOKEEPER_VERSION 3.4.13

SCALA_VERSION 2.13

### v2.8.2

`docker pull ghcr.io/obalunenko/docker-kafka-zookeeper:v2.8.2`

KAFKA_VERSION 2.8.2

ZOOKEEPER_VERSION 3.4.13

SCALA_VERSION 2.13

### v2.7.2

`docker pull ghcr.io/obalunenko/docker-kafka-zookeeper:v2.7.2`

KAFKA_VERSION 2.7.2

ZOOKEEPER_VERSION 3.4.13

SCALA_VERSION 2.13

### v2.6.3

`docker pull ghcr.io/obalunenko/docker-kafka-zookeeper:v2.6.3`

KAFKA_VERSION 2.6.3

ZOOKEEPER_VERSION 3.4.13

SCALA_VERSION 2.13

### v2.5.1

`docker pull ghcr.io/obalunenko/docker-kafka-zookeeper:v2.5.1`

KAFKA_VERSION 2.5.1

ZOOKEEPER_VERSION 3.4.13

SCALA_VERSION 2.13

### v2.4.1

`docker pull ghcr.io/obalunenko/docker-kafka-zookeeper:v2.4.1`

KAFKA_VERSION 2.4.1

ZOOKEEPER_VERSION 3.4.13

SCALA_VERSION 2.13

### v2.3.1

`docker pull ghcr.io/obalunenko/docker-kafka-zookeeper:v2.3.1`

KAFKA_VERSION 2.3.1

ZOOKEEPER_VERSION 3.4.13

SCALA_VERSION 2.12

### v2.2.2

`docker pull ghcr.io/obalunenko/docker-kafka-zookeeper:v2.2.2`

KAFKA_VERSION 2.2.2

ZOOKEEPER_VERSION 3.4.13

SCALA_VERSION 2.12

### v2.1.1

`docker pull ghcr.io/obalunenko/docker-kafka-zookeeper:v2.1.1`

KAFKA_VERSION 2.1.1

ZOOKEEPER_VERSION 3.4.13

SCALA_VERSION 2.12

### v2.0.1

`docker pull ghcr.io/obalunenko/docker-kafka-zookeeper:v2.0.1`

KAFKA_VERSION 2.0.1

ZOOKEEPER_VERSION 3.4.13

SCALA_VERSION 2.12

### v1.1.1

`docker pull ghcr.io/obalunenko/docker-kafka-zookeeper:v1.1.1`

KAFKA_VERSION 1.1.1

ZOOKEEPER_VERSION 3.4.13

SCALA_VERSION 2.12

### v1.0.2

`docker pull ghcr.io/obalunenko/docker-kafka-zookeeper:v1.0.2`

KAFKA_VERSION 1.0.2

ZOOKEEPER_VERSION 3.4.13

SCALA_VERSION 2.12

### v0.11.0.3

`docker pull ghcr.io/obalunenko/docker-kafka-zookeeper:v0.11.0.3`

KAFKA_VERSION 0.11.0.3

ZOOKEEPER_VERSION 3.4.13

SCALA_VERSION 2.12

### v0.10.2.2

`docker pull ghcr.io/obalunenko/docker-kafka-zookeeper:v0.10.2.2`

KAFKA_VERSION 0.10.2.2

ZOOKEEPER_VERSION 3.4.13

SCALA_VERSION 2.12

### v0.9.0.1

`docker pull ghcr.io/obalunenko/docker-kafka-zookeeper:v0.9.0.1`

KAFKA_VERSION 0.9.0.1

ZOOKEEPER_VERSION 3.4.13

SCALA_VERSION 2.12

### v0.8.2.2

`docker pull ghcr.io/obalunenko/docker-kafka-zookeeper:v0.8.2.2`

KAFKA_VERSION 0.8.2.2

ZOOKEEPER_VERSION 3.4.13

SCALA_VERSION 2.11

