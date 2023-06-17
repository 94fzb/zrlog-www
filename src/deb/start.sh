#!/usr/bin/env bash
cd /var/lib/zrlogwww

if [ -f "sim.pid" ]; then
kill -9 $(cat sim.pid)
sleep 1
fi
export ZRLOG_WWW_PORT=6091
nohup java -Xms8m -Xmx128m -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=log/ -XX:+PrintStringTableStatistics -Dfile.encoding=UTF-8 -jar com.zrlog.jar > nohup.out 2>&1 &
echo "zrlog is run"