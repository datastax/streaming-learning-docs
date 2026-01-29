./bin/pulsar-admin sinks update \
  --sink-type cloud-storage \
  --name "$SINK_NAME" \
  --inputs "$TENANT/$NAMESPACE/$TOPIC" \
  --tenant "$TENANT" \
  --parallelism 2
