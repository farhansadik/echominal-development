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
	a=false
	echo "A    = $a"
	echo "2nd  = $2"
}

function myfunc()
{
    local  __resultvar=$1
    local  myresult='some value'
    if [[ "$__resultvar" ]]; then
        eval $__resultvar="'$myresult'"
    else
        echo "$myresult"
    fi
}

myfunc result
echo $result
result2=$(myfunc)
echo $result2

# check_existence $dir
# test "as" "aQQQs"