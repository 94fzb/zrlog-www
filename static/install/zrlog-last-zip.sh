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

wget https://dl.zrlog.com/release/zrlog.zip -O zrlog.zip
unzip zrlog.zip
sh bin/run.sh

