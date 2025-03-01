#!/bin/bash

DATE=`date +"%y-%m-%d"`

curl ftp://$FTP_SERVER/$DATE.tar.gz -u $FTP_USER:$FTP_PASSWORD -o /tmp/$DATE.tar.gz

cd /
tar -xvf /tmp/$DATE.tar.gz
mongorestore --drop -h $HOST /var/backups/$DATE

