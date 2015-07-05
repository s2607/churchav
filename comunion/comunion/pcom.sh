#!/bin/bash
while true ;
do
	for f in $(ls *.wav)
	do
		echo $f
		aplay  --rate=32000HZ -D CARD=CODEC,DEV=plug $f
		sleep 1
	done
done
