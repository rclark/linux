#!/usr/bin/env bash

set -e

context="$(dirname "$(greadlink -f $0)")/.."

docker build -q -t linux "${context}" $@
docker run \
  -e AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID \
  -e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY \
  -e AWS_SESSION_TOKEN=$AWS_SESSION_TOKEN \
  -it linux \
  bash
