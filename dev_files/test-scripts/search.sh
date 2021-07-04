#!/usr/bin/sh
#!/data/data/com.termux/files/usr/bin/sh

test=5

echo 
read -p "search % " input 

#printf "\nexecuting ver 1\n"
#file="$(find $input -type f)" # for file 
#printf "\nexecuting ver 2\n"
#directory="$(find $input -type d)" exec 2> /dev/null # for directory

echo
if [[ `ls -a | grep $input` == $input  ]] ; then echo found file; 
#elif find $input -type d; then echo found dir;
else echo sorry no $input has been found; 
fi