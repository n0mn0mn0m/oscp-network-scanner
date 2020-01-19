#!/bin/bash

if [ -z "$1" ]
	then
	echo "./sweeper 192.168.0.1-254"
	exit
fi

nmap -sn $1 -oG scan-results.txt
cut -d " " -f 2 scan-results.txt > ips-found.txt
rm scan-results.txt
sh auto-scan.sh ips-found.txt
