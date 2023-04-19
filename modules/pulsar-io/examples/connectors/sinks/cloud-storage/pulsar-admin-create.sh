./bin/pulsar-admin sinks create \
  --sink-type cloud-storage \
  --name "$SINK_NAME" \
  --inputs "$TENANT/$NAMESPACE/$INPUT_TOPIC" \
  --tenant "$TENANT" \
  --processing-guarantees EFFECTIVELY_ONCE \
  --sink-config '{ <see below reference for storage specifics> }'
