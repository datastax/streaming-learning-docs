curl -sS --fail -X PUT "$WEB_SERVICE_URL/admin/v3/sources/$TENANT/$NAMESPACE/$SOURCE_NAME" \
  -H "accept: application/json" \
  -H "Content-Type: application/json" \
  -H "Authorization: $PULSAR_TOKEN" \
  -d '{
        "topicName": "persistent://'$TENANT'/'$NAMESPACE'/'$TOPIC'",
        "configs": {
          "sleepBetweenMessages": "100"
        }
      }'