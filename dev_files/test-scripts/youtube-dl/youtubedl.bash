#!/data/data/com.termux/files/usr/bin/bash 
#!/usr/bin/bash

stop='\e[0m'; red='\033[1;91m';

current_dir=$(echo $(pwd))
output_dir="${current_dir}/storage/shared/Youtube-DL"
config_dir="${current_dir}/.config/youtube-dl/"
termux_config="${current_dir}/bin/"

echo "Hi, This script setup an environment to download various videos from various apps"
echo -e "\n\n${red}Requirements :"
echo -e "${stop}    1. Allow storage access to Termux"
echo -e "${stop}    2. A working internet connection.\n\n"
read -p "When you are ready just press enter: "

# Basic setup
termux-setup-storage
pkg install python # ffmpeg
pip install youtube-dl
mkdir -p $output_dir
mkdir -p $config_dir
mkdir -p $termux_config
file_1=share2youtubedl.sh;
file_2=.ytdl.conf;
cp -rv $file_1 $config_dir
cp -rv $file_2 

# Download setup & config file
# curl -L https://raw.githubusercontent.com/OzakIOne/termux-youtube-dl/v1.0.1/.ytdl.conf > "${config_dir}/config"
# curl -L https://raw.githubusercontent.com/OzakIOne/termux-youtube-dl/v1.0.1/share2youtubedl.sh > "${termux_config}/termux-url-opener"

echo -e "${read}Congratulations!!! Your setup is complete.\n\n"
read -p "When you are ready just press enter"