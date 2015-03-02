#!/bin/bash

mvn clean compile assembly:single -Pgenerator-static
java -jar target/generator-html.jar
mvn clean compile assembly:single
cp target/com.zrlog.jar com.zrlog.jar
replace=""
find static/changelog -name "*.md" -type f -exec bash -c 'markdown "$0" > "${0/.md/$replace}.html"' {} \;

path=${0}
sh bin/sync.sh ${1} static

runPath=/home/zrlog/
tarName=www-zrlog.tar.gz

cp target/com.zrlog.jar com.zrlog.jar
tar -cvf $tarName bin/start.sh download static com.zrlog.jar

#host info，插件主题服务，还以有状态server方式运行，便于扩展
host=store.zrlog.com
userName=root

expect -c "
set timeout -1
spawn scp $tarName $userName@$host:$runPath/www-zrlog.tar.gz
expect {
    \"*assword\" {send \"$password\r\";}
    \"yes/no\" {send \"yes\r\"; exp_continue;}
      }
expect eof"

expect -c "
set timeout -1
spawn ssh $userName@$host \n cd $runPath \n rm -rf download/* static/* static/* \n tar -xvf $tarName \n rm $tarName \n sh bin/start.sh
expect {
    \"*assword\" {send \"$password\r\";}
    \"yes/no\" {send \"yes\r\"; exp_continue;}
      }
expect eof"

rm $tarName com.zrlog.jar