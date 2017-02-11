#!/usr/bin/env bash

set -e

context="$(dirname "$(greadlink -f $0)")/.."

os=ubuntu
if [ "${1}" != "" ]; then
  os=${1}
  shift
fi

if [ "${1}" == "build" ]; then
  shift
  docker build -f ${context}/dockerfiles/${os} -t linux-${os} "${context}" $@
  exit 0
fi

docker run \
  -e AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID \
  -e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY \
  -e AWS_SESSION_TOKEN=$AWS_SESSION_TOKEN \
  $@ \
  -it linux-${os} \
  bash
