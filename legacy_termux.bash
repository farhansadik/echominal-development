#!/data/data/com.termux/files/usr/bin/bash 
#!/usr/bin/bash 

v=0.7

# dir 
function dir() {
	mkdir -p /sdcard/MP3
	mkdir -p /sdcard/termux-backup
	mkdir -p $HOME/.log/
}

function package_list() {
	# packages 
	pkg install dialog man ranger python python2 git figlet vim cowsay ffmpeg bat termux-tools termux-api zip unzip zsh fish
	# pkg install whois -- not found 
	pip install youtube-dl
}

function ccli() {
	cat ~/echominal-development/.config/ccli/termux.cfg >> ~/.zshrc
	source ~/.zshrc
	cat ~/echominal-development/.config/ccli/termux.cfg >> ~/.bashrc
	source ~/.bashrc
	cp -rv ~/echominal-development/.config $HOME
}

function mirror() {
	# mirror patch (for test)

	echo "deb https://termux.mentality.rip/termux-main/ stable main" > $PREFIX/etc/apt/sources.list
	echo "deb https://packages.termux.org/apt/termux-games games stable" > $PREFIX/etc/apt/sources.list.d/game.list
	echo "deb https://packages.termux.org/apt/termux-science science stable" > $PREFIX/etc/apt/sources.list.d/science.list
	pkg update && pkg upgrade;
}

function git_branch() {
	git clone -b development https://github.com/farhansadik/echominal-development.git
}

dir
mirror 
#package_list
#ccli
git_branch
cp -rv .config $HOME

termux-reload-settings
