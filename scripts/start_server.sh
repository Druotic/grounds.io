#!/bin/sh

set -e

service docker start
cd /grounds
/usr/local/bin/docker-compose --version
make run
cd -

exit 0
