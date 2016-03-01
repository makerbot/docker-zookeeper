#!/bin/sh

printf "${ZK_SERVER_NUMBER}" > /var/lib/zookeeper/myid
printf "Starting Zookeeper server $(cat /var/lib/zookeeper/myid)\n"
/opt/zookeeper/bin/zkServer.sh start-foreground
