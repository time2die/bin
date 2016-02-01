#!/bin/sh
find . -name $1 -exec grep -Hn -B1 -A1 --color=auto "$2" {} \; | tee ~/.find.out  
