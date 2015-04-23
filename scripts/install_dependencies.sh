#!/bin/sh

set -e

yum install -y docker make python-pip
pip install -U docker-compose 

exit 0
