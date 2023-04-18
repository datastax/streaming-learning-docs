./bin/pulsar-admin sinks create \
  --sink-type bigquery \
  --name "$SINK_NAME" \
  --inputs "$TENANT/$NAMESPACE/$INPUT_TOPIC" \
  --tenant "$TENANT" \
  --processing-guarantees EFFECTIVELY_ONCE \
  --sink-config '{
      "topic": "bq-test01",
      "kafkaConnectorSinkClass": "com.wepay.kafka.connect.bigquery.BigQuerySinkConnector",
      "offsetStorageTopic": "bq-sink-offsets01",
      "sanitizeTopicName": "true",
      "kafkaConnectorConfigProperties":
        "name": "bq-sink1",
        "topics": "bq-test01",
        "project": "my-bigquery-project",
        "defaultDataset": "BQ_CONNECTOR_TEST",
        "keyfile": "/Users/me/my-bigquery-key.json",
        "keySource": "FILE",
        "autoCreateTables": "true",
        "sanitizeTopics": "false"
      }'
