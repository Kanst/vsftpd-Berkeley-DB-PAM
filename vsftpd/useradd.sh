#!/bin/sh
cp /etc/vsftpd/users.db /etc/vsftpd/users.db_bac
rm -f /etc/vsftpd/users.db
db4.8_load -T -t hash -f /etc/vsftpd/logins.txt /etc/vsftpd/users.db
chmod 0600 /etc/vsftpd/users.db
service vsftpd restart
