curl -X PUT "$WEB_SERVICE_URL/admin/v3/sinks/$TENANT/$NAMESPACE/$SINK_NAME?opt=poweruser" \
  -H "Authorization: $PULSAR_TOKEN" \
  -F 'sinkConfig="{
    \"archive\":\"builtin:\/\/cassandra-enhanced\",
    \"tenant\":\"'$TENANT'\",
    \"namespace\":\"'$NAMESPACE'\",
    \"name\":\"'$SINK_NAME'\",
    \"inputs\":[ \"'$TENANT'\/'$NAMESPACE'\/'$INPUT_TOPIC'\" ],
    \"configs\":{
      ...
    }
  }"'
