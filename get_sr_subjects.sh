#!/bin/bash

# Example script: list schema registry subjects

. ./cc_env
curl -XGET -u$CC_SR_APIKEY:$CC_SR_SECRET $CC_SR_URL/subjects
