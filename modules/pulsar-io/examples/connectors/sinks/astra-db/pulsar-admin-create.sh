./bin/pulsar-admin sinks create \
  --sink-type cassandra-enhanced \
  --name "$SINK_NAME" \
  --inputs "persistent://$TENANT/$NAMESPACE/$INPUT_TOPIC" \
  --tenant "$TENANT" \
  --sink-config '{
    "contactPoints": "cassandra",
    "loadBalancing.localDc": "datacenter1",
    "port": 9042,
    "cloud.secureConnectBundle": null,
    "ignoreErrors": "None",
    "maxConcurrentRequests": 500,
    "maxNumberOfRecordsInBatch": 32,
    "queryExecutionTimeout": 30,
    "connectionPoolLocalSize": 4,
    "jmx": true,
    "compression": "None",
    "auth": {
      "provider": "None",
      "username": null,
      "password": null,
      "gssapi": {
        "keyTab": null,
        "principal": null,
        "service": "dse"
      }
    },
    "ssl": {
      "provider": "None",
      "hostnameValidation": true,
      "keystore": {
        "password": null,
        "path": null
      },
      "openssl": {
        "keyCertChain": null,
        "privateKey": null
      },
      "truststore": {
        "password": null,
        "path": null
      },
      "cipherSuites": null
    },
    "topic": {
      "${INPUT_TOPIC}": {
        "${KEYSPACE_NAME}": {
          "${TABLE_NAME}": {
            "mapping": "name=value.name",
            "consistencyLevel": "LOCAL_ONE",
            "ttl": -1,
            "ttlTimeUnit": "SECONDS",
            "timestampTimeUnit": "MICROSECONDS",
            "nullToUnset": true,
            "deletesEnabled": true
          }
        },
        "codec": {
          "locale": "en_US",
          "timeZone": "UTC",
          "timestamp": "CQL_TIMESTAMP",
          "date": "ISO_LOCAL_DATE",
          "time": "ISO_LOCAL_TIME",
          "unit": "MILLISECONDS"
        }
      }
    }
  }'
