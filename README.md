Simplified version of Menu Searx that opens searx.instance/search?q=$query directly, for those who prefer to use the search engine's site itself.

# Simple Menu Searx
A simple program to search the [searx](https://searx.me/) search engine through [dmenu](https://tools.suckless.org/dmenu/) or [rofi](https://github.com/davatorium/rofi). Works with almost any Searx instance and you can change which one to use easily.  
# Prerequisites
The program requires xdotool to work. This programs allows the script to type into the search bar and use hotkeys to open it.  
The program requires either dmenu or rofi to work.
The program requires surf to work (obviously.)

# Installation
If you wish to receive error notifications at anywhere but the terminal, see `Notifier` under `Config` on how to set a notification program.  
The program does not have a set Searx instance, check in `Searx Instance` under `Config` below to see how to set one.  
Make sure to pick an instance that will not serverely rate limit you and you also want to pick an instance that will not block the program, it will notify you if you have. See `Instance Report` to have some help picking one.  

# Config
The entire script exists within `menusearx.sh`, open it up to start configuring things.  

## Menu Program
Uncomment the line under `# assign menu prorgram` relating to your preferred menu application, or add your own.  
If you wish to change the colour of your menu program, that can be accomplished by inserting whatever flags are needed to the  `menu` variable, just before the `-p` tag.

## Notifier
The default program for sending important notifications is `notify-send` you can change this by changing the `notifier` variable.

## Searx Instance
You can set a Searx instance by changing the `instance` variable to the instance's domain name.

## Browser
You can set a Searx instance by changing the `browser` variable to the instance's domain name.

# Instance Report
Many large public instances will have systems in place that will block the program. If you host your own instance, you should have no problem using that, otherwise, here are some suggestions of large instances. (This is not an endorsement, just a list of compatible instances)

Confirmed working public instances:

* https://search.mdosch.de/
* https://searx.bbaovanc.com/
* https://search.stinpriza.org/
* https://searx.decatec.de/
* https://dynabyte.ca/
* https://zoek.anchel.nl/
* https://searx.rasp.fr/
* https://search.bluelock.org/
* https://searx.pwoss.org/
* https://search.disroot.org/
* https://searx.sunless.cloud/
* https://search.snopyta.org/
