#!/usr/bin/bash

print_ok=" [**] ok .."

# on test 
# selected 
# final

function main() {
	echo "1. main A"
	echo "2. main B"
	echo "0. exit"
}

function sub_a() {
	sub_a_input=""; 

	echo "menu cccccccccccccc"
	
	while [ "$sub_a_input" != "x" ]; do {
		echo "1. Extra Menu"
		echo "2. sub A2"
		echo "3. sub A3"
		echo "press (x) for back"; echo 

		read -p "sub option A : " sub_a_input

		if [[ $sub_a_input == 1 ]]; then {
			sub_b
		} elif [[ $sub_a_input == 2 ]]; then {
			echo $print_ok; echo; pause;
		} elif [[ $sub_a_input == 3 ]]; then {
			echo $print_ok; echo 
		}; fi

	} done 
}

function sub_b() {
	sub_b_input="";

	while [ "$sub_b_input" != "0" ]; do {

		printf "\t\n [1] sub B1"
		printf "\t [2] sub B2"
		printf "\t[3] sub B3\n"
		printf " press (0) for back\n"; echo

		read -p "sub option A : " sub_b_input

		if [[ $sub_b_input == 1 ]]; then {

			echo $print_ok; echo && pause

		} elif [[ $sub_b_input == 2 ]]; then {

			echo $print_ok; echo && pause

		} elif [[ $sub_b_input == 3 ]]; then {

			echo $print_ok; echo && pause

		} else echo "invalid" ; fi

	} done 
}

function input() {
	echo; echo -n "enter : " && read input; echo; 
}

function pause(){
	# Purpose: Display pause prompt
	local message="$@"
	[ -z $message ] && message="Press [Enter] key to continue..."
	read -p "$message" readEnterKey
}

while true; do {

	echo; main; input;

	if [[ $input == 1 ]]; then {
		
		sub_a;

	} elif [[ $input == 2 ]]; then {

		echo "sorry no options has been added here" && pause;

	} elif [[ $input == 0 ]]; then {

		exit 0;

	} else echo "invalid"; fi;
	
} done

