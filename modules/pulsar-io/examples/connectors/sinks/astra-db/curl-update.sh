curl -X PUT "$WEB_SERVICE_URL/admin/v3/sinks/$TENANT/$NAMESPACE/$SINK_NAME" \
  -H "Authorization: $PULSAR_TOKEN" \
  -F "sinkConfig=@cassandra-enhanced-sink-config.json;type=application/json"