#!/data/data/com.termux/files/usr/bin/bash 

# build for android 
# for test 
loc=$HOME/.config/;
cd $loc
#if mkdir -p $loc; then cd $loc; fi
#it clone https://github.com/evait-security/weeman;
#git clone https://github.com/4shadoww/hakkuframework

function termux_sudo() {
	cd $loc;
	echo -e "  \e[5mInstalling Termux sudo\e[0m"
	printf "Cloning Git       : "
	if git clone https://gitlab.com/st42/termux-sudo.git; then printf "Done\n"; fi
	printf "Install a dependency needed for sudo\n"
	if cd termux-sudo; then pkg install ncurses-utils; fi;
	printf "Execute the following commands to place sudo into the correct directory with the proper permissions and ownership\n";
	cat sudo > /data/data/com.termux/files/usr/bin/sudo
	chmod 700 /data/data/com.termux/files/usr/bin/sudo
}

# toutube-dl
git clone https://github.com/OzakIOne/termux-youtube-dl.git
# aircrack 
#pkg install root-repo python python2
# pkg install aircrack-ng
