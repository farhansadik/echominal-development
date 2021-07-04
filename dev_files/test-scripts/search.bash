#!/usr/bin/bash
#!/data/data/com.termux/files/usr/bin/bash

test=8

echo 
read -p "search % " input 

file="$(find $input -type f)" # for file 
directory="$(find $input -type d)" # for directory

echo
if [[ $file == $input ]]; then echo found file; 
elif [[ $directory == $input ]]; then echo found directory;
else echo sorry no $input has been found; 
fi