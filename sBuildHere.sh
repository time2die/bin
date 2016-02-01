#!/bin/sh

alias build='JAVA_HOME=/usr/lib/jvm/java-7-oracle; mvn clean install -DskipTests=true package -P makeDistr,DefaultJarSignParameters,copyWars,!publishSDK,!convertClosures | tee -a ~/.build.log '
build
