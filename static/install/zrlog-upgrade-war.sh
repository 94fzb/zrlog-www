#!/usr/bin/env bash
checkJava() {
	if [ -x "$JAVA_HOME/bin/java" ]; then
		JAVA="$JAVA_HOME/bin/java"
	else
		JAVA=`which java`
	fi

	if [ ! -x "$JAVA" ]; then
		echo "Could not find any executable java binary. Please install java in your PATH or set JAVA_HOME"
		exit 1
	fi
}
checkJava

#脚本仅用于 JDK17 及以前版本的 war 进行快速安装测试
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/openlogic-openjdk-17.jdk/Contents/Home/
#export PATH=${JAVA_HOME}/bin:$PATH
tomcatVersion=7.0.86
if [ -f "apache-tomcat-${tomcatVersion}.tar.gz" ]
then
echo 'Tomcat download'
else
  wget https://dl.zrlog.com/server/tomcat/apache-tomcat-${tomcatVersion}.tar.gz
fi
tar -xf apache-tomcat-${tomcatVersion}.tar.gz
cd apache-tomcat-${tomcatVersion}
rm -rf webapps/ROOT
# MySQL 8.x 以后版本需要 zrlog 使用 2.x 版本的 war 包
# wget https://dl.zrlog.com/release/zrlog-1.8.0-d1f36bc-release.war -O webapps/ROOT.war
wget https://dl.zrlog.com/release/zrlog-2.0.8-8ab9029-release.war -O webapps/ROOT.war
sh bin/catalina.sh run

