#!/bin/bash 

# v 0.56

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
	echo "1st ver = $1"

	#echo "True= $a"
	bool=false
	echo "2nd ver = $2"
}

function myfunc() {
    local  __resultvar=$1
    local  myresult='some value'
    if [[ "$__resultvar" ]]; then
        eval $__resultvar="'$myresult'"
    else
        echo "$myresult"
    fi
}

function returnBoolean() {

	local bool=false

	# search for file 
	if [[ `ls -a | grep ^$1` == $1 ]]; then {
		echo "File is ready"
		
		bool=true;
		# echo true > $file;
	}
	else {
		echo "No directory or file has been found!";
		# echo false > $file
		bool=false;
	} fi

	return bool;
}

#myfunc result
#echo $result
# result2=$(myfunc)
#echo $result2

# check_existence $dir
# test "as" "aQQQs"

returnBoolean $dir