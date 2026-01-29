./bin/pulsar-admin sources update \
  --source-type debezium-mssql \
  --name "$SOURCE_NAME" \
  --destination-topic-name "persistent://$TENANT/$NAMESPACE/$TOPIC" \
  --tenant "$TENANT" \
  --parallelism 2