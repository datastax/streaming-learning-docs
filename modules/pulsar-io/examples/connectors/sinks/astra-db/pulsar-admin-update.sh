# NOTE: This is not a working example.

./bin/pulsar-admin sinks update \
  --sink-type cassandra-enhanced \
  --name "$SINK_NAME" \
  --inputs "persistent://$TENANT/$NAMESPACE/$INPUT_TOPIC" \
  --tenant "$TENANT" \
  --sink-config-file configs.json