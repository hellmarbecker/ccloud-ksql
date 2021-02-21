#!/bin/bash
# get schema registry API key and secret

jq '.contexts[].schema_registry_clusters[].schema_registry_credentials' ~/.ccloud/config.json

