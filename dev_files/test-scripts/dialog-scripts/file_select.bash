#!/data/data/com.termux/files/usr/bin/bash 

set import termux-dialog from termux-api

declare list;
list=('song1.mp3' 'song2.mp3' 'song3.mp3' 'song3.mp3' 'song3.mp3');
loc=/sdcard/MP3;

# locating file 
# ls $loc/${list[2]}

# termux-dialog -t 'title'

dialog --title "list of dir " --fselect /sdcard/MP3 20 50