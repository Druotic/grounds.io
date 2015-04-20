#!/bin/sh

set -e

service docker start
cd /grounds
make run
cd -

exit 0
