#!/bin/bash
jq '.contexts[].kafka_cluster_context.kafka_environment_contexts[].kafka_cluster_infos[].api_keys[]' ~/.ccloud/config.json
