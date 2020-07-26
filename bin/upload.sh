#!/bin/bash

./mvnw clean compile assembly:single -Pgenerator-static
java -jar target/generator-html.jar
sh bin/package-deb.sh
replace=""
find static/changelog -name "*.md" -type f -exec bash -c 'markdown "$0" > "${0/.md/$replace}.html"' {} \;

path=${0}
#sh bin/sync.sh ${1} static

runPath=/tmp
debName=zrlog-www.deb

#host info，插件主题服务，还以有状态server方式运行，便于扩展
host=cd.zrlog.com
userName=root

expect -c "
set timeout -1
spawn scp -P 6000 $debName $userName@$host:$runPath/$debName
expect {
    \"*assword\" {send \"$password\r\";}
    \"yes/no\" {send \"yes\r\"; exp_continue;}
      }
expect eof"

expect -c "
set timeout -1
spawn ssh -p 6000 $userName@$host \n cd $runPath \n dpkg -i $debName \n
expect {
    \"*assword\" {send \"$password\r\";}
    \"yes/no\" {send \"yes\r\"; exp_continue;}
      }
expect eof"

rm $debName