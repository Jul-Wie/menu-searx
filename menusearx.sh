#!/bin/sh

# check if necessary programs are installed
command -v xdotool >/dev/null || { echo 'Please install xdotool!'; exit 1; }
# assign menu prorgram
menu='dmenu -i -l 15 -p'
#menu='rofi -dmenu -i -p'

# if notify-send is not installed, use echo as notifier for errors
notifier='notify-send'

# choose searx instance
instance=https://search.snopyta.org/

# checks if instance is empty
if [ -z "$instance" ]; then
        $notifier 'Empty instance'
        exit 1
fi

# search term, exit with error if query is empty
query=$($menu 'Search' <&-) || {
        $notifier 'Empty query'
        exit 1
}

# sanitise query
query=$(printf "$query" | \
        sed \
        -e 's|+|%2B|g'\
        -e 's|#|%23|g'\
        -e 's|&|%26|g'\
        -e 's| |+|g'\
        )

# perform search.

# start surf with tabs enabled. adjust this command to your liking.
# the tabbed -c is only necessary for surf, but since this scrip 
tabbed -c surf -e & disown

# opens search bar and enters your search instance
# sleep because of load times, your system might require different (or no) sleep times
# all the following (by default) only works for surf
sleep 0.4
xdotool key ctrl+g
sleep 0.3
xdotool type $instance/search?q=$query
sleep 0.5
xdotool key Return
