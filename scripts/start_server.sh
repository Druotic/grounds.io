#!/bin/sh

set -e

service docker start
cd /grounds
/usr/local/bin/docker-compose --version
export PATH=/usr/local/bin:$PATH
which docker
which docker-compose
echo $PATH
make run
cd -

exit 0
