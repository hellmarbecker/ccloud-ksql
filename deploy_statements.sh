#!/bin/bash

KSQL_ENDPOINT="localhost:8088"

curl -XPOST -d@- $KSQL_ENDPOINT/ksql <<EOF
{
  "ksql" : "CREATE STREAM riderLocations (profileId VARCHAR, latitude DOUBLE, longitude DOUBLE) WITH (kafka_topic='locations', value_format='json', partitions=1);"
}
EOF

