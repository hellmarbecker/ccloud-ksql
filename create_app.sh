#!/bin/bash

# This expects that the user is already logged in


CC_ENV=$(ccloud environment list -o human | awk '/\*/ { print $2; }')
CC_CLUSTER=$(ccloud kafka cluster list -o human | awk '/\*/ { print $2; }')

CC_KSQLAPP=$(ccloud ksql app create my_app -o json | jq .id | sed -e "s/\"//g")

while
    app_status=$(ccloud ksql app list -o json | jq ".[] | select(.id=\"${CC_KSQLAPP}\") | .status")
    [[ $app_status =~ "PROVISIONING" ]]
do
    sleep 5
done

ccloud ksql app describe ${CC_KSQLAPP} -o json 

