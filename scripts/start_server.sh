#!/bin/sh

set -e

service docker start
cd /grounds

LOG_FILE=start_server.log
[ -a $LOG_FILE ]
rm -f $LOG_FILE
echo "$(date) === Begin start_server logs===" >> $LOG_FILE

/usr/local/bin/docker-compose --version
export PATH=/usr/local/bin:$PATH
make pull 2>&1 | tee -a $LOG_FILE                                                                                                                                                                                  

echo "-----------" >> $LOG_FILE
echo "end pull, begin run" >> $LOG_FILE
echo "-----------" >> $LOG_FILE

chmod 664 Gemfile.lock

make run 2>&1 | tee -a $LOG_FILE
cd -

exit 0
