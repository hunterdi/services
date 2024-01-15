# connect:
#   image: docker.redpanda.com/redpandadata/connectors:v1.0.4
#   hostname: connect
#   container_name: connect
#   # platform: 'linux/amd64'
#   depends_on:
#     - redpanda-0
#     - redpanda-1
#     - redpanda-2
#   ports:
#     - 8083:8083
#   volumes:
#     - ./data/connect/connect-password:/opt/kafka/connect-password
#     - ./data/connect/connect-plugins:/opt/kafka/connect-plugins
#     - ./data/connect/connect-certs:/opt/kafka/connect-certs/user-secret
#   environment:
#     CONNECT_CONFIGURATION: |
#         key.converter=org.apache.kafka.connect.converters.ByteArrayConverter
#         value.converter=org.apache.kafka.connect.converters.ByteArrayConverter
#         group.id=connectors-cluster
#         offset.storage.topic=_internal_connectors_offsets
#         config.storage.topic=_internal_connectors_configs
#         status.storage.topic=_internal_connectors_status
#         config.storage.replication.factor=-1
#         offset.storage.replication.factor=-1
#         status.storage.replication.factor=-1
#         offset.flush.interval.ms=1000
#         producer.linger.ms=50
#         producer.batch.size=131072
#     CONNECT_BOOTSTRAP_SERVERS: ...redpanda-0:9092,...redpanda-1:9092,redpanda-2:9092
#     CONNECT_GC_LOG_ENABLED: "false"
#     CONNECT_HEAP_OPTS: -Xms512M -Xmx512M
#     CONNECT_METRICS_ENABLED: "false"
#     CONNECT_LOG_LEVEL: info
#     CONNECT_PLUGIN_PATH: "/opt/kafka/connect-plugins"
#     CONNECT_TLS_ENABLED: "false"

# https://devpress.csdn.net/cloudnative/62f295cac6770329307f6baa.html
# connect:
#   build:
#     context: .
#     dockerfile: debezium.dockerfile
#   depends_on:
#     - redpanda-0
#     - redpanda-1
#     - redpanda-2
#   ports:
#     - "8083:8083"
#   environment:
#     CONNECT_BOOTSTRAP_SERVERS: redpanda-0:9092
#     CONNECT_REST_ADVERTISED_HOST_NAME: connect
#     CONNECT_REST_PORT: 8083
#     CONNECT_GROUP_ID: connect-cluster-group
#     CONNECT_CONFIG_STORAGE_TOPIC: docker-connect-configs
#     CONNECT_CONFIG_STORAGE_REPLICATION_FACTOR: 1
#     CONNECT_OFFSET_FLUSH_INTERVAL_MS: 10000
#     CONNECT_OFFSET_STORAGE_TOPIC: docker-connect-offsets
#     CONNECT_OFFSET_STORAGE_REPLICATION_FACTOR: 1
#     CONNECT_STATUS_STORAGE_TOPIC: docker-connect-status
#     CONNECT_STATUS_STORAGE_REPLICATION_FACTOR: 1
#     CONNECT_INTERNAL_KEY_CONVERTER: "org.apache.kafka.connect.json.JsonConverter"
#     CONNECT_INTERNAL_VALUE_CONVERTER: "org.apache.kafka.connect.json.JsonConverter"
#     CONNECT_AUTO_CREATE_TOPICS_ENABLE: "true"
#     CONNECT_KEY_CONVERTER: "org.apache.kafka.connect.json.JsonConverter"
#     CONNECT_VALUE_CONVERTER: "org.apache.kafka.connect.json.JsonConverter"
  
  # bacnet-simulator:
  #   build:
  #     context: .
  #     dockerfile: bacnet-simulator.dockerfile
  #   restart: unless-stopped
  #   ports:
  #     - 47809:47809


  # https://docs.redpanda.com/current/deploy/deployment-option/self-hosted/docker-image/#docker-image-configuration-properties
# https://docs.redpanda.com/current/reference/docker-compose/
# https://medium.com/@ongxuanhong/dataops-01-stream-data-ingestion-with-redpanda-56b7fd768887
# https://redpanda.com/blog/kafka-connect-elasticsearch-data-streaming
# https://redpanda.com/blog/redpanda-mongodb
# https://redpanda.com/blog/change-data-capture-postgres-debezium-kafka-connect
# https://www.confluent.io/hub/confluentinc/kafka-connect-elasticsearch
# https://redpanda-data.medium.com/real-time-text-querying-using-elasticsearch-and-redpanda-875927819690
# https://docs.confluent.io/platform/current/installation/docker/config-reference.html
# https://rmoff.net/2020/06/19/how-to-install-connector-plugins-in-kafka-connect/
# https://github.com/confluentinc/demo-scene/blob/master/kafka-connect-zero-to-hero/docker-compose.yml#L82-L87
# https://repo1.maven.org/maven2/org/apache/plc4x/plc4j-apache-kafka/0.10.0/ https://www.youtube.com/watch?v=RWKggid25ds
# https://github.com/apache/plc4x/blob/develop/plc4j/integrations/apache-kafka/src/test/java/org/apache/plc4x/kafka/config/SourceConfigTest.java
# https://github.com/Kretiss/BACnet-simulator/blob/main/rooms_simulator.py

# https://redpanda.com/blog/ksqldb-materialized-cache

# https://pathway.com/developers/tutorials/connectors/switching-to-redpanda