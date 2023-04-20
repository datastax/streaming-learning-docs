curl -sS --fail --request POST ''$WEB_SERVICE_URL'/admin/v3/sinks/'$TENANT'/'$NAMESPACE'/'$SINK_NAME'?opt=poweruser' \
  --header "Authorization: Bearer $PULSAR_TOKEN" \
  --form 'sinkConfig="{
    \"archive\":\"builtin:\/\/bigquery\",
    \"tenant\":\"'$TENANT'\",
    \"namespace\":\"'$NAMESPACE'\",
    \"name\":\"'$SINK_NAME'\",
    \"parallelism\": 1,
    \"inputs\":[\"'$TENANT'\/'$NAMESPACE'\/'$INPUT_TOPIC'\"],
    \"configs\":{
      \"topic\": \"bq-test01\",
      \"kafkaConnectorSinkClass\": \"com.wepay.kafka.connect.bigquery.BigQuerySinkConnector\",
      \"offsetStorageTopic\": \"bq-sink-offsets01\",
      \"sanitizeTopicName\": \"true\",
      \"kafkaConnectorConfigProperties\":{
        \"name\": \"bq-sink1\",
        \"topics\": \"bq-test01\",
        \"project\": \"my-bigquery-project\",
        \"defaultDataset\": \"BQ_CONNECTOR_TEST\",
        \"keyfile\": \"{\"type\":\"service_account\",\"project_id\":\"XXXXXX\",\"private_key_id\":\"XXXXXXXXX\",\"private_key\":\"-----BEGIN PRIVATE KEY-----\\nMIIEvQIBADANBgkqhkiG9w … U=\\n-----END PRIVATE KEY-----\\n\",\"client_email\":\"XXXXXXXXX\",\"client_id\":\"XXXXXX\",\"auth_uri\":\"https://accounts.google.com/o/oauth2/auth\",\"token_uri\":\"https://oauth2.googleapis.com/token\",\"auth_provider_x509_cert_url\":\"https://www.googleapis.com/oauth2/v1/certs\",\"client_x509_cert_url\":\"https://www.googleapis.com/robot/v1/metadata/x509/XXXXXX\"}\",
        \"keySource\": \"JSON\",
        \"autoCreateTables\": \"true\",
        \"sanitizeTopics\": \"false\"
      }
    }
  }"'