#!/usr/bin/env bash

set -e

docker ps -a | grep 'Exited' | awk '{print $1}' | xargs docker rm
dangles=$(docker images -q -f dangling=true)
if [ "${dangles}" != "" ]; then docker rmi ${dangles}; fi
