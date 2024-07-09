#!/bin/bash

sudo apt update
sudo apt install expect markdown -y
./mvnw -U clean compile assembly:single -Pgenerator-static
java -jar target/generator-html.jar
replace=""
find static/changelog -name "*.md" -type f -exec bash -c 'markdown "$0" > "${0/.md/$replace}.html"' {} \;