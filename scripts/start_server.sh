#!/bin/sh

set -e

service docker start
cd /grounds
/usr/local/bin/docker-compose --version
which docker
which docker-compose
echo $PATH
make run
cd -

exit 0
