#!/bin/sh

set -e

service docker start
cd /grounds
/usr/local/bin/docker-compose --version
export PATH=/usr/local/bin:$PATH
make pull
docker pull redis
make run
cd -

exit 0
