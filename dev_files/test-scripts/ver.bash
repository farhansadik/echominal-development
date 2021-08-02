#!/bin/bash 

file=i.txt
package_name='screenfetch'
dir='javascript'

ver=false

echo "[REAL] File Name : $file"
echo "[REAL] Veriable  : $ver"

function bool() {

	# another method 
	my_bool=true

	#if [ "$my_bool" = true ]; fi

}

function dir_existence() {

	if [[ `ls -a | grep ^$file` == $file ]]; then {
		echo "File Found";
		ver=true; 
		echo "[FAKE] Veriable  : $ver"
		#echo true > $file;
	}
	else {
		echo "No directory or file has been found!";
		#echo false > $file
	} fi
}

dir_existence