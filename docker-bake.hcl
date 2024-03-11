group "default" {
  targets = [
    "kafka-latest",
    "kafka-stable",
    "kafka-3_7",
    "kafka-3_6",
    "kafka-3_5",
    "kafka-3_4",
    "kafka-3_3",
    "kafka-3_2",
    "kafka-3_1",
    "kafka-3_0",
    "kafka-2_8",
    "kafka-2_7",
    "kafka-2_6",
    "kafka-2_5",
    "kafka-2_4",
    "kafka-2_3",
    "kafka-2_2",
    "kafka-2_1",
    "kafka-2_0",
    "kafka-1_1",
    "kafka-1_0",
    "kafka-0_11",
    "kafka-0_10",
    "kafka-0_9",
    "kafka-0_8"
  ]
}

variable "REGISTRY" {
  default = "ghcr.io"
}

variable "IMAGE_NAME" {
  default = "obalunenko/kafka-zookeeper"
}

variable "IMAGE_WITH_REGISTRY" {
  default = notequal("", REGISTRY) ? "${REGISTRY}/${IMAGE_NAME}" : "${IMAGE_NAME}"
}

target "kafka_base" {
  dockerfile = "Dockerfile"
  context    = "."
  platforms  = ["linux/amd64", "linux/arm64"]
  labels = {
    "org.opencontainers.image.source"  = "https://github.com/obalunenko/docker-kafka-zookeeper"
    "org.opencontainers.image.authors" = "Oleg Balunenko <oleg.balunenko@gmail.com>"
    "org.opencontainers.image.title"   = "Kafka and Zookeeper"
  }
}

target "kafka-0_8" {
  inherits = ["kafka_base"]
  args     = {
    KAFKA_VERSION = "0.8.2.2"
    SCALA_VERSION = "2.11"
  }
  tags = [
    "${IMAGE_WITH_REGISTRY}:0.8.2.2",
    "${IMAGE_WITH_REGISTRY}:v0.8.2.2",
    "${IMAGE_WITH_REGISTRY}:0.8"
  ]
}

target "kafka-0_9" {
  inherits = ["kafka_base"]
  args     = {
    KAFKA_VERSION = "0.9.0.1"
    SCALA_VERSION = "2.11"
  }
  tags = [
    "${IMAGE_WITH_REGISTRY}:0.9.0.1",
    "${IMAGE_WITH_REGISTRY}:v0.9.0.1",
    "${IMAGE_WITH_REGISTRY}:0.9"
  ]
}

target "kafka-0_10" {
  inherits = ["kafka_base"]
  args     = {
    KAFKA_VERSION = "0.10.2.2"
    SCALA_VERSION = "2.12"
  }
  tags = [
    "${IMAGE_WITH_REGISTRY}:0.10.2.2",
    "${IMAGE_WITH_REGISTRY}:v0.10.2.2",
    "${IMAGE_WITH_REGISTRY}:0.10"
  ]
}

target "kafka-0_11" {
  inherits = ["kafka_base"]
  args     = {
    KAFKA_VERSION = "0.11.0.3"
    SCALA_VERSION = "2.12"
  }
  tags = [
    "${IMAGE_WITH_REGISTRY}:0.11.0.2",
    "${IMAGE_WITH_REGISTRY}:v0.11.0.2",
    "${IMAGE_WITH_REGISTRY}:0.11",
    "${IMAGE_WITH_REGISTRY}:0"
  ]
}

target "kafka-1_0" {
  inherits = ["kafka_base"]
  args     = {
    KAFKA_VERSION = "1.0.2"
    SCALA_VERSION = "2.12"
  }
  tags = [
    "${IMAGE_WITH_REGISTRY}:1.0.2",
    "${IMAGE_WITH_REGISTRY}:v1.0.2",
    "${IMAGE_WITH_REGISTRY}:1.0"
  ]
}

target "kafka-1_1" {
  inherits = ["kafka_base"]
  args     = {
    KAFKA_VERSION = "1.1.1"
    SCALA_VERSION = "2.12"
  }
  tags = [
    "${IMAGE_WITH_REGISTRY}:1.1.1",
    "${IMAGE_WITH_REGISTRY}:v1.1.1",
    "${IMAGE_WITH_REGISTRY}:1.1",
    "${IMAGE_WITH_REGISTRY}:1"
  ]
}

target "kafka-2_0" {
  inherits = ["kafka_base"]
  args     = {
    KAFKA_VERSION = "2.0.1"
    SCALA_VERSION = "2.12"
  }
  tags = [
    "${IMAGE_WITH_REGISTRY}:2.0.1",
    "${IMAGE_WITH_REGISTRY}:v2.0.1",
    "${IMAGE_WITH_REGISTRY}:2.0"
  ]
}

target "kafka-2_1" {
  inherits = ["kafka_base"]
  args     = {
    KAFKA_VERSION = "2.1.1"
    SCALA_VERSION = "2.12"
  }
  tags = [
    "${IMAGE_WITH_REGISTRY}:2.1.1",
    "${IMAGE_WITH_REGISTRY}:v2.1.1",
    "${IMAGE_WITH_REGISTRY}:2.1"
  ]
}

target "kafka-2_2" {
  inherits = ["kafka_base"]
  args     = {
    KAFKA_VERSION = "2.2.2"
    SCALA_VERSION = "2.12"
  }
  tags = [
    "${IMAGE_WITH_REGISTRY}:2.2.2",
    "${IMAGE_WITH_REGISTRY}:v2.2.2",
    "${IMAGE_WITH_REGISTRY}:2.2"
  ]
}

target "kafka-2_3" {
  inherits = ["kafka_base"]
  args     = {
    KAFKA_VERSION = "2.3.1"
    SCALA_VERSION = "2.12"
  }
  tags = [
    "${IMAGE_WITH_REGISTRY}:2.3.1",
    "${IMAGE_WITH_REGISTRY}:v2.3.1",
    "${IMAGE_WITH_REGISTRY}:2.3"
  ]
}

target "kafka-2_4" {
  inherits = ["kafka_base"]
  args     = {
    KAFKA_VERSION = "2.4.1"
    SCALA_VERSION = "2.13"
  }
  tags = [
    "${IMAGE_WITH_REGISTRY}:2.4.1",
    "${IMAGE_WITH_REGISTRY}:v2.4.1",
    "${IMAGE_WITH_REGISTRY}:2.4"
  ]
}

target "kafka-2_5" {
  inherits = ["kafka_base"]
  args     = {
    KAFKA_VERSION = "2.5.1"
    SCALA_VERSION = "2.13"
  }
  tags = [
    "${IMAGE_WITH_REGISTRY}:2.5.1",
    "${IMAGE_WITH_REGISTRY}:v2.5.1",
    "${IMAGE_WITH_REGISTRY}:2.5"
  ]
}

target "kafka-2_6" {
  inherits = ["kafka_base"]
  args     = {
    KAFKA_VERSION = "2.6.3"
    SCALA_VERSION = "2.13"
  }
  tags = [
    "${IMAGE_WITH_REGISTRY}:2.6.3",
    "${IMAGE_WITH_REGISTRY}:v2.6.3",
    "${IMAGE_WITH_REGISTRY}:2.6"
  ]
}

target "kafka-2_7" {
  inherits = ["kafka_base"]
  args     = {
    KAFKA_VERSION = "2.7.2"
    SCALA_VERSION = "2.13"
  }
  tags = [
    "${IMAGE_WITH_REGISTRY}:2.7.2",
    "${IMAGE_WITH_REGISTRY}:v2.7.2",
    "${IMAGE_WITH_REGISTRY}:2.7"
  ]
}

target "kafka-2_8" {
  inherits = ["kafka_base"]
  args     = {
    KAFKA_VERSION = "2.8.2"
    SCALA_VERSION = "2.13"
  }
  tags = [
    "${IMAGE_WITH_REGISTRY}:2.8.2",
    "${IMAGE_WITH_REGISTRY}:v2.8.2",
    "${IMAGE_WITH_REGISTRY}:2",
    "${IMAGE_WITH_REGISTRY}:2.8"
  ]
}

target "kafka-3_0" {
  inherits = ["kafka_base"]
  args     = {
    KAFKA_VERSION = "3.0.2"
    SCALA_VERSION = "2.13"
  }
  tags = [
    "${IMAGE_WITH_REGISTRY}:3.0.2",
    "${IMAGE_WITH_REGISTRY}:v3.0.2",
    "${IMAGE_WITH_REGISTRY}:3.0"
  ]
}

target "kafka-3_1" {
  inherits = ["kafka_base"]
  args     = {
    KAFKA_VERSION = "3.1.2"
    SCALA_VERSION = "2.13"
  }
  tags = [
    "${IMAGE_WITH_REGISTRY}:3.1.2",
    "${IMAGE_WITH_REGISTRY}:v3.1.2",
    "${IMAGE_WITH_REGISTRY}:3.1"
  ]
}

target "kafka-3_2" {
  inherits = ["kafka_base"]
  args     = {
    KAFKA_VERSION = "3.2.3"
    SCALA_VERSION = "2.13"
  }
  tags = [
    "${IMAGE_WITH_REGISTRY}:3.2.3",
    "${IMAGE_WITH_REGISTRY}:v3.2.3",
    "${IMAGE_WITH_REGISTRY}:3.2"
  ]
}

target "kafka-3_3" {
  inherits = ["kafka_base"]
  args     = {
    KAFKA_VERSION = "3.3.2",
    SCALA_VERSION = "2.13"
  }
  tags = [
    "${IMAGE_WITH_REGISTRY}:3.3.2",
    "${IMAGE_WITH_REGISTRY}:v3.3.2",
    "${IMAGE_WITH_REGISTRY}:3.3",
  ]
}

target "kafka-3_4" {
  inherits = ["kafka_base"]
  args     = {
    KAFKA_VERSION = "3.4.1",
    SCALA_VERSION = "2.13"
  }
  tags = [
    "${IMAGE_WITH_REGISTRY}:3.4.1",
    "${IMAGE_WITH_REGISTRY}:v3.4.1",
  ]
}

target "kafka-3_5" {
  inherits = ["kafka_base"]
  args     = {
    KAFKA_VERSION = "3.5.2",
    SCALA_VERSION = "2.13"
  }
  tags = [
    "${IMAGE_WITH_REGISTRY}:3.5.2",
    "${IMAGE_WITH_REGISTRY}:v3.5.2",
    "${IMAGE_WITH_REGISTRY}:3.5",
  ]
}

target "kafka-3_6" {
  inherits = ["kafka_base"]
  args     = {
    KAFKA_VERSION = "3.6.1",
    SCALA_VERSION = "2.13"
  }
  tags = [
    "${IMAGE_WITH_REGISTRY}:3.6.1",
    "${IMAGE_WITH_REGISTRY}:v3.6.1",
    "${IMAGE_WITH_REGISTRY}:v3.6",
  ]
}

target "kafka-3_7" {
  inherits = ["kafka_base"]
  args     = {
    KAFKA_VERSION = "3.7.0",
    SCALA_VERSION = "2.13"
  }
  tags = [
    "${IMAGE_WITH_REGISTRY}:3.7.0",
    "${IMAGE_WITH_REGISTRY}:v3.7.0",
  ]
}


target "kafka-stable" {
  inherits = ["kafka-3_7"]
  tags     = [
    "${IMAGE_WITH_REGISTRY}:stable",
  ]
}

target "kafka-latest" {
  inherits = ["kafka_base"]
  args     = {
    KAFKA_VERSION = "3.7.0",
    SCALA_VERSION = "2.13"
  }
  tags = [
    "${IMAGE_WITH_REGISTRY}:latest",
    "${IMAGE_WITH_REGISTRY}:3",
    "${IMAGE_WITH_REGISTRY}:3.7",
  ]
}