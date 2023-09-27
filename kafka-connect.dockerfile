# https://docs.confluent.io/platform/current/connect/index.html#what-is-kafka-connect
FROM confluentinc/cp-kafka-connect:7.5.0

ENV CONNECT_PLUGIN_PATH="/usr/share/java,/usr/share/confluent-hub-components,/etc/connect-jars"