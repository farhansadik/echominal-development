#!/bin/bash 

dir='javascriptA'
log=$HOME/.config/echominal/log/bool.txt


## THIS IS FINAL 

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
	if [[ `cat $log` == 'true' ]]; then {
		echo this is a TRUE 
	} elif [[ `cat $log` == 'false' ]]; then {
		echo this is a FALSE 
	} else echo NULL; fi 
}

echo "[*] Checking existence...."
check $dir 

echo "[*] calling bool method "
bool