./bin/pulsar-admin sinks update \
  --sink-type jdbc-clickhouse \
  --name "$SINK_NAME" \
  --inputs "persistent://$TENANT/$NAMESPACE/$TOPIC" \
  --tenant "$TENANT" \
  --parallelism 2
