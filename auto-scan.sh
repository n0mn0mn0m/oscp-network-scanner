#!/bin/bash

echo "[*] Auto Scanner Started"

while read p; do
	echo "[+] Starting $p Scan"
	mkdir $p
	echo "[*] $p Directory Created"
	nmap -v -A -Pn -sV $p > $p/nmap-results.txt
	echo "[+] $p Scan Complete"
done < $1

echo "[*] Auto Scanner Complete"
