./mvnw -U clean compile assembly:single
cp target/com.zrlog.jar .
./mvnw -U package -Dassembly.skipAssembly=true -Pgenerator-static
debName=zrlog-www.deb
cp target/zrlog-www*.deb $debName