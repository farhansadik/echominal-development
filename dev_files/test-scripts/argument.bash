#!/bin/bash 

file=i.txt
package_name='screenfetch'
dir='javascript'

function check_existence() {
	if [[ `ls -a | grep ^$1` == $1 ]]; then {
		echo "File is ready"
		
		# echo true > $file;
	}
	else {
		echo "No directory or file has been found!";
		# echo false > $file
	} fi
}

function test() {
	echo "hello $1"
}

check_existence $dir