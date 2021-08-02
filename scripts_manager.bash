#!/usr/bin/env bash
#!/data/data/com.termux/files/usr/bin/bash 

script_version="0.1.05"  # Alpha (pre 0.1.03 Alpha)

# Define variables
red='\033[1;91m'; deep_green='\033[0;32m'; green='\033[1;92m'; yellow='\033[1;93m'; blue='\033[1;94m'; white='\033[1;97m'; 
stop='\e[0m'; blink='\e[5m';

def_loc=~/.config/echominal/tools/; 													# default clone location
log=~/.config/echominal/log/system-status.log; 									# for running log  // not used 
scripts_installation_log=~/.config/echominal/log/scripts_installation.log;		# not used 	
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

function weeman() {
	git clone https://github.com/evait-security/weeman.git $def_loc
}

function main() {
	# main calling(all primary options) method 

	echo; # extra echo
	local a; 

	while [ "$a" != "0" ]; do {

		printf "$deep_green" && printf "scripts manager : $red$script_version$stop\n"
		main_menu
		echo -n "`cat $shell_style`" && read a; echo;

		if   [[ $a == 1 ]];   then echo ok ; pause
		elif [[ $a == 2 ]];   then echo ok
		elif [[ $a == 3 ]];   then echo ok
		elif [[ $a == 4 ]];   then echo ok
		elif [[ $a == 5 ]];   then echo ok
		elif [[ $a == 6 ]];   then echo ok
		elif [[ $a == 7 ]];   then echo ok
		elif [[ $a == 8 ]];   then echo ok
		elif [[ $a == 9 ]];   then echo ok
		elif [[ $a == 10 ]];  then echo ok
		elif [[ $a == 11 ]];  then echo ok
		elif [[ $a == 12 ]];  then echo ok
		elif [[ $a == 'x' ]]; then echo ok
		elif [[ $a == 'q' || $a == 'exit' || $a == 'quit' || $a == 'quit()' || $a == 0  ]]; then exit 0;
		else echo "Invalid Options" && echo; fi

	} done 

}


# main

main
printf "\nCurrently its on development\n\n" 
pause