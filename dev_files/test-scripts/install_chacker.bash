#!/bin/bash 

dir='javascript'
log=$HOME/.config/echominal/log/bool.txt


## THIS IS FINAL 
## v0.89

function check() {
	if [[ `ls -a | grep ^$1` == $1 ]]; then {

		echo "File Located : $1"
		echo true > $log;
	}
	else {
		echo "No directory or file has been found!";
		echo false > $log
	} fi
}

function bool() {
	if [[ $@ == 'true' ]]; then {
		echo this is a TRUE 
	} 
	elif [[ $@ == 'false' ]]; then {
		echo this is a FALSE 
	} 
	else echo NULL; fi 
}

echo false > $log

echo "[*] Checking existence...."
check $dir 

echo "[*] calling bool method "
com=`cat $log`;
bool $com