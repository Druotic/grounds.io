#!/bin/sh

set -e

LOG_FILE=start_server.log

service docker start
cd /grounds
/usr/local/bin/docker-compose --version
export PATH=/usr/local/bin:$PATH
make pull 2>&1 | tee -a $LOG_FILE                                                                                                                                                                                  
echo "-----------" >> $LOG_FILE
echo "end pull, begin run" >> $LOG_FILE
echo "-----------" >> $LOG_FILE
make run 2>&1 | tee -a $LOG_FILE
cd -

exit 0
