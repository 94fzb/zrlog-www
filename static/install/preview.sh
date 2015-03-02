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
tag=http://dl.zrlog.com/preview/zrlog.war?$(date +%s)
rm apache-tomcat-7.0.86.tar.gz

wget http://dl.zrlog.com/server/tomcat/apache-tomcat-7.0.86.tar.gz
tar -xvf apache-tomcat-7.0.86.tar.gz
cd apache-tomcat-7.0.86
rm -rf webapps/ROOT
wget $tag -O webapps/ROOT.war
sh bin/catalina.sh run

