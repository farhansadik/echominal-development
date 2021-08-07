#!/usr/bin/env bash
#!/data/data/com.termux/files/usr/bin/bash 

script_version="0.1.19"  # Alpha (pre 0.1.03 Alpha)

# Define variables
red='\033[1;91m'; deep_green='\033[0;32m'; green='\033[1;92m'; yellow='\033[1;93m'; blue='\033[1;94m'; white='\033[1;97m'; 
stop='\e[0m'; blink='\e[5m';

def_loc=~/.config/echominal/scripts; 											# default loc for scripts // used 
log=~/.config/echominal/log/system-status.log; 									# for running log  		  // not used 
existence=~/.config/echominal/log/bool.log;										# to store boolean 	   	  // used 
bool=`cat $existence`															# failed to work		  // not used 
shell_style=~/.config/echominal/shell_style.cfg;

function pause(){
	# Purpose: Display pause prompt
	local message="$@"
	[ -z $message ] && message="Press [Enter] key to continue..."
	read -p "$message" readEnterKey
}


main_menu() {
	# main menu 

	printf "\n  [1]  Weeman [non-root]\n"; 		# dir 
	echo "  [2]  Hakku Framework [root]"; 	# dir 
	echo "  [3]  Aircrack-ng [root]"; 		# package 
	echo "  [4]  Nmap [on-test]";  			# package 
	echo "  [5]  Tool-X [on-test]";			# dir 
	echo "  [6]  Zphisher [on-test]";		# dir 
	echo "  [7]  ShortUrl [on-test]";		# dir 
	echo "  [8]  wkhtmltopdf [on-test]";	# custom install (dir)
	echo "  [9]  wkhtmltojpg [on-test]";    # custom install (dir)
	echo "  [10] zVirus-Gen [on-test]";		# dir 
	echo "  [11] bash2mp4 [on-test]";		# dir 
	echo "  [12] metasploit [on-test]";		# not found 
	#echo "  [13] Aircrack [on-test]";

	# previous menu 
	#echo " [1]  Information Gathering ";
	#echo " [2]  Vulnerability Analysis";
	#echo " [3]  Exploitation Tools";
	#echo " [4]  Wireless Attacks";
	#echo " [5]  Forensics Tools";
	#echo " [6]  Web Applications";
	#echo " [7]  Stress Testing";
	#echo " [8]  Sniffing & Spoofing";
	#echo " [9]  Password Attacks";
	#echo " [10] Maintaining Access";
	#echo " [11] Hardware Hacking";
	#echo " [12] Reverse Engineering";
	#echo " [13] Reporting Tools";

	printf "  [x]$blue  Manage Scripts\n$stop"
	printf "  [0]$red  Back\n$stop\n";
}

function check_existence_file() {

	# echo " [*] by default FALSE"
	echo false > $existence # by default
	
	if [[ `ls -a $def_loc | grep ^$1` == $1 ]]; then {
		echo " [*] checking for $1"
		echo " [*] found $1"
		echo true > $existence
	}
	else {
		echo " [*] No directory or file has been found!";
		echo " [*] Need to install!"
		echo false > $existence
	} fi

}

function boolean() {

	# TEMPORARY 
	# CURRENTLY NOT IN SERVICE 

	if [[ $1 == 'true' ]]; then {
		echo this is a TRUE 
	} 
	elif [[ $1 == 'false' ]]; then {
		echo this is a FALSE 
	} 
	else echo NULL; fi 
}

function weeman() {
	
	# for dir/files 
	if check_existence_file "weeman"; then {

		if [[ `cat $existence` == 'true' ]]; then {

			echo " [*] ready to run weeman "
			if cd $def_loc/weeman; then python weeman.py; fi 

		} 

		elif [[ `cat $existence` == 'false' ]]; then {

			echo " [*] Sorry Weeman not found in your system!"; echo
			read -p "You want to install weeman [y/n] " install_weeman 

			if [[ $install_weeman == 'y' ]]; then {
				git clone https://github.com/evait-security/weeman.git $def_loc/weeman		
				if cd $def_loc/weeman; then python weeman.py; fi 
			}

			elif [[ $install_weeman == 'n' ]]; then {
				pause
			} fi 

		} fi 

	} fi 

	echo 
}

function hakku_framework() {

	# root access message required 

	# for dir/files 
	if check_existence_file "hakkuframework"; then {

		if [[ `cat $existence` == 'true' ]]; then {

			echo " [*] ready to run hakkuframework "
			# if cd $def_loc/weeman; then python weeman.py; fi 

		} 

		elif [[ `cat $existence` == 'false' ]]; then {

			echo " [*] Sorry hakkuframework not found in your system!"; echo
			read -p "You want to install hakkuframework [y/n] " install_hakkuframework

			if [[ $install_hakkuframework == 'y' ]]; then {
				git clone https://github.com/4shadoww/hakkuframework $def_loc/hakkuframework
				#if cd $def_loc/weeman; then python weeman.py; fi 
			} 

			elif [[ $install_hakkuframework == 'n' ]]; then {
				pause
			} fi 

		} fi 

	} fi 

	echo 

}

function aircrack_ng() {
	sleep 0.5
}

function nmap() {
	sleep 0.5
}

main() {
	# main calling(all primary options) method 

	echo; # extra echo
	local a; 

	while [ "$a" != "0" ]; do {

		printf "$deep_green" && printf "scripts manager : $red$script_version$stop\n"
		main_menu
		echo -n "`cat $shell_style`" && read a; echo;

		if   [[ $a == 1 ]];   then weeman ; pause
		elif [[ $a == 2 ]];   then hakku_framework; pause # hakku framework  
		elif [[ $a == 3 ]];   then echo ok; pause # aircrack-ng 
		elif [[ $a == 4 ]];   then echo ok; pause # nmap 
		elif [[ $a == 5 ]];   then echo ok; pause 
		elif [[ $a == 6 ]];   then echo ok; pause 
		elif [[ $a == 7 ]];   then echo ok; pause 
		elif [[ $a == 8 ]];   then echo ok; pause 
		elif [[ $a == 9 ]];   then echo ok; pause 
		elif [[ $a == 10 ]];  then echo ok; pause 
		elif [[ $a == 11 ]];  then echo ok; pause 
		elif [[ $a == 12 ]];  then echo ok; pause 
		elif [[ $a == 'x' ]]; then echo ok; pause 
		elif [[ $a == 'q' || $a == 'exit' || $a == 'quit' || $a == 'quit()' || $a == 0  ]]; then exit 0;
		else echo "Invalid Options" && echo; fi

	} done 

}


# main

main
pause