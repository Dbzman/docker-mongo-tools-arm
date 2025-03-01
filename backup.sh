#!/bin/bash

DATE=`date +"%y-%m-%d"`

cd /tmp

mongodump -h $HOST --out /var/backups/$DATE
tar -zcvf $DATE.tar.gz /var/backups/$DATE

curl -T $DATE.tar.gz -u $FTP_USER:$FTP_PASSWORD ftp://$FTP_SERVER/
