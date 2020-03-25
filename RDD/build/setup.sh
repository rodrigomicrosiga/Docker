#!/bin/bash

cp /build/odbc.ini /etc
cp /build/odbcinst.ini /etc
cp /build/my-init.sh /usr/local/bin

odbcinst -i -s -l -f /etc/odbc.ini

echo "/dbaccess/multi/" > /etc/ld.so.conf.d/dbaccess64-libs.conf
/sbin/ldconfig

chmod +x /dbaccess/dbmonitor
chown -R root:root /dbaccess

rm -rf /build