curl -X POST "$WEB_SERVICE_URL/admin/v3/sinks/$TENANT/$NAMESPACE/$SINK_NAME" \
  -H "Authorization: $PULSAR_TOKEN" \
  -F "sinkConfig=@configs.json;type=application/json"