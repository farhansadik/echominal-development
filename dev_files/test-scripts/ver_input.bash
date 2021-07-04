#!/bin/bash 


read -p "enter % "  input 

if [[ $input != 'q' && $input != 'exit' && $input != 'quit' ]]; then {
	echo executing main 
}
elif [[ $input == 'q' || $input == 'exit' || $input == 'quit' ]]; then {
	echo q means quit 
} 
else echo invalid; fi
