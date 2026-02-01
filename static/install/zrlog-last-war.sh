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

#脚本仅用于 JDK11 及以前版本的 war 进行快速安装测试
tomcatVersion=10.1.42
if [ -f "apache-tomcat-${tomcatVersion}.tar.gz" ]
then
echo 'Tomcat download'
else
  wget https://dl.zrlog.com/server/tomcat/apache-tomcat-${tomcatVersion}.tar.gz
fi
tar -xf apache-tomcat-${tomcatVersion}.tar.gz
cd apache-tomcat-${tomcatVersion}
rm -rf webapps/ROOT
wget https://dl.zrlog.com/release/zrlog.war -O webapps/ROOT.war
sh bin/catalina.sh run

