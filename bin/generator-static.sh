#!/bin/bash

./mvnw -U clean compile assembly:single -Pgenerator-static
java -jar target/generator-html.jar