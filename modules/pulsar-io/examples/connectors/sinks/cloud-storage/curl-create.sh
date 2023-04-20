curl -sS --fail --request POST ''$WEB_SERVICE_URL'/admin/v3/sinks/'$TENANT'/'$NAMESPACE'/'$SINK_NAME'?opt=poweruser' \
  --header "Authorization: Bearer $PULSAR_TOKEN" \
  --form 'sinkConfig="{
    \"archive\":\"builtin:\/\/cloud-storage\",
    \"tenant\":\"'$TENANT'\",
    \"namespace\":\"'$NAMESPACE'\",
    \"name\":\"'$SINK_NAME'\",
    \"parallelism\": 1,
    \"inputs\":[\"'$TENANT'\/'$NAMESPACE'\/'$INPUT_TOPIC'\"],
    \"configs\":{ <see below reference for storage specifics> }
  }"'