#!/bin/bash
wget http://www.sberometer.ru/ -q -O ~/.cur.html ; cat ~/.cur.html  |  grep cursNow | sed -e "s/var cursNow = //g" | sed -e "s/{\"//g" | sed -e "s/\":/ /g" | sed -e "s/,\"/ /g" | sed -e "s/};//g" |
sed -e "s/\t//g" | tee ~/.cur.html ;
xclip -i ~/.cur.html

