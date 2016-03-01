#!/bin/sh

function num-from-string() {
    local out i a
    for ((i=0;i<${#1};++i)); do
        printf -v a "%d\n" "'${1:i:1}"
        out+=$((a%10))
    done
    echo "$out"
}

printf "$(num-from-string ${ZK_SERVER_NUMBER})" > /var/lib/zookeeper/myid
printf "Starting Zookeeper server $(cat /var/lib/zookeeper/myid)\n"
/opt/zookeeper/bin/zkServer.sh start-foreground
