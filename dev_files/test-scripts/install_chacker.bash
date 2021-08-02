#!/bin/bash 

file=i.txt
package_name='screenfetch'
dir='javascript'

boolean=false # default 

function third_party_package_check() {
	if [[ `ls -a | grep ^$dir` == $dir ]]; then {

		echo "File Is ready"

		# echo true > $file;
	}
	else {
		echo "No directory or file has been found!";
		# echo false > $file
	} fi
}

echo "[*] Checking existence...."
third_party_package_check