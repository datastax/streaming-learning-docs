./bin/pulsar-admin sinks update \
  --sink-type bigquery \
  --name "$SINK_NAME" \
  --inputs "$TENANT/$NAMESPACE/$INPUT_TOPIC" \
  --tenant "$TENANT" \
  --parallelism 2
