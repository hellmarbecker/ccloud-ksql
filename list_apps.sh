#!/bin/bash
ccloud ksql app list -o json | jq '.[].id' | tr -d \"

