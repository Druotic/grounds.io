#!/bin/sh

set -e

service docker start
cd /grounds
docker-compose --version
make run
cd -

exit 0
