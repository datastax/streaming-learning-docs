./bin/pulsar-admin sinks create \
  --sink-type jdbc-postgres \
  --name "$SINK_NAME" \
  --inputs "persistent://$TENANT/$NAMESPACE/$TOPIC" \
  --tenant "$TENANT" \
  --sink-config-file configs.json