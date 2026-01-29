./bin/pulsar-admin sinks create \
  --sink-type jdbc-clickhouse \
  --name "$SINK_NAME" \
  --inputs "persistent://$TENANT/$NAMESPACE/$TOPIC" \
  --tenant "$TENANT" \
  --sink-config-file configs.json
