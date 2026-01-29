./bin/pulsar-admin sinks create \
  --sink-type cloud-storage \
  --name "$SINK_NAME" \
  --inputs "$TENANT/$NAMESPACE/$TOPIC" \
  --tenant "$TENANT" \
  --processing-guarantees EFFECTIVELY_ONCE \
  --sink-config-file configs.json