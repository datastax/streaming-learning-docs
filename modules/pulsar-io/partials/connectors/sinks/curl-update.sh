curl -sS --fail -L -X PUT "$WEB_SERVICE_URL/admin/v3/sinks/$TENANT/$NAMESPACE/$SINK_NAME" \
  --header "Authorization: Bearer $PULSAR_TOKEN" \
  --form "sinkConfig=@configs.json;type=application/json"