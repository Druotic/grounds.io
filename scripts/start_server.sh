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
echo "end pull, begin chmod and run" >> $LOG_FILE
echo "-----------" >> $LOG_FILE

chmod 777 -R /grounds 2>&1 | tee -a $LOG_FILE

#make detach 2>&1 | tee -a $LOG_FILE
make run 2>&1 >> $LOG_FILE &
cd -

exit 0
