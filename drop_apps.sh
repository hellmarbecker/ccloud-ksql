#!/bin/bash

ccloud ksql app list -o json | jq ".[].id" | xargs ccloud ksql app delete

