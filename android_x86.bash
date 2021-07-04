#!/data/data/com.termux/files/usr/bin/bash 
#!/usr/bin/bash 

v=0.6

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

function termux_sudo() {
	# sudo 
	echo "Installing Termux sudo"
	printf "Cloning Git       : "
	if git clone https://gitlab.com/st42/termux-sudo.git; then printf "Done\n"; fi
	printf "Install a dependency needed for sudo\n"
	if cd termux-sudo; then apt install ncurses-utils; fi;
	printf "Execute the following commands to place sudo into the correct directory with the proper permissions and ownership\n";
	cat sudo > /data/data/com.termux/files/usr/bin/sudo
	chmod 700 /data/data/com.termux/files/usr/bin/sudo
}

function termux_ohmyzsh() {
	# cloning git (termux-ohmyzsh)
	git clone https://github.com/Cabbagec/termux-ohmyzsh.git "$HOME/termux-ohmyzsh" --depth 1

	# moving-file
	mv "$HOME/.termux" "$HOME/.termux.bak.$(date +%Y.%m.%d-%H:%M:%S)"
	cp -R "$HOME/termux-ohmyzsh/.termux" "$HOME/.termux"

	# cloning git (oh-my-zsh)
	git clone git://github.com/robbyrussell/oh-my-zsh.git "$HOME/.oh-my-zsh" --depth 1

	# moving/copying-file
	mv "$HOME/.zshrc" "$HOME/.zshrc.bak.$(date +%Y.%m.%d-%H:%M:%S)"
	cp "$HOME/.oh-my-zsh/templates/zshrc.zsh-template" "$HOME/.zshrc"

	# setting
	sed -i '/^ZSH_THEME/d' "$HOME/.zshrc"
	sed -i '1iZSH_THEME="agnoster"' "$HOME/.zshrc"
	echo "alias chcolor='$HOME/.termux/colors.sh'" >> "$HOME/.zshrc"
	echo "alias chfont='$HOME/.termux/fonts.sh'" >> "$HOME/.zshrc"

	# cloning-git (zsh-syntax-highlighting)
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1
	echo "source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> "$HOME/.zshrc"
	chsh -s zsh # getting permissions
	echo "oh-my-zsh install complete!\nChoose your color scheme now~" && $HOME/.termux/colors.sh
	echo "Choose your font now~" && $HOME/.termux/fonts.sh
}

function ccli() {
	cat ~/echominal-development/.config/ccli/termux.cfg >> ~/.zshrc
	source ~/.zshrc
	cat ~/echominal-development/.config/ccli/termux.cfg >> ~/.bashrc
	source ~/.bashrc
	cp -rv ~/echominal-development/.config $HOME
}

function git_branch() {
	git clone -b development https://github.com/farhansadik/echominal-development.git
}

dir
package_list
termux_sudo
# termux_ohmyzsh
ccli
git_branch

termux-reload-settings
