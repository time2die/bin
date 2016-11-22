#!/bin/bash
while :
do
	
	echo "----------------------------------" `date` "-------------------------------------" >> $FILENAME
	date >> $FILENAME
	curl https://gat.semrush.com/api/rest/1.2/status >> $FILENAME
	sleep 1
done
