checkJava() {
	if [ -x "$JAVA_HOME/bin/java" ]; then
		JAVA="$JAVA_HOME/bin/java"
	else
		# shellcheck disable=SC2006
		JAVA=`which java`
	fi

	if [ ! -x "$JAVA" ]; then
		echo "Could not find any executable java binary. Please install java in your PATH or set JAVA_HOME"
		exit 1
	fi
}
checkJava

if [ -f "apache-tomcat-7.0.86.tar.gz" ]
then
echo 'Tomcat download'
else
  wget https://dl.zrlog.com/server/tomcat/apache-tomcat-7.0.86.tar.gz
fi
tar -xf apache-tomcat-7.0.86.tar.gz
# shellcheck disable=SC2164
cd apache-tomcat-7.0.86
rm -rf webapps/ROOT
wget https://dl.zrlog.com/release/zrlog-1.8.0-d1f36bc-release.war -O webapps/ROOT.war
sh bin/catalina.sh run

