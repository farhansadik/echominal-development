#!/usr/bin/bash
#!/data/data/com.termux/files/usr/bin/bash

test=6

set import termux-media-player from termux-api
set import termux-notification from termux-api
set import termux-notification-remove from termux-api

def_location=/sdcard/MP3/
song=/sdcard/MP3/song1.mp3

#termux-notification --id 2 --title "Second Notification" \
#    --button1 $b --button1-action 'termux-notification-remove 2';

echo 
cd $def_location
echo "song list from /sdcard/MP3"; echo 
ls -1 --file-type *.mp3 # printing song list
echo
read -p "search % " input 

file="$(find $input -type f)" # exec 2> /dev/null # for file 

echo
if [[ $file == $input ]]; then {
    termux-media-player play $input
    termux-notification --id 1 --title "Music Player" --content "playing music using termux-media-player" \
        --button1 'play' --button1-action "termux-media-player play; termux-toast 'playing song' " \
	 --button2 'pause' --button2-action "termux-media-player pause; termux-toast 'song has been paused' " \
	 --button3 'stop' --button3-action "termux-media-player stop; termux-toast 'quit' ; termux-notification-remove 1";	
}
else echo "sorry no $input has been found"; 
fi