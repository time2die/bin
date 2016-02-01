#!/bin/sh

echo > ~/.build.log

cd platf
sBuildHere.sh

cd ../platf-plugins
sBuildHere.sh

cd ../sbns
sBuildHere.sh

clear
sIsBuild.sh
