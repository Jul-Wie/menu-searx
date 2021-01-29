# Menu Searx
A simple program to search the [searx](https://searx.me/) web browser through [dmenu](https://tools.suckless.org/dmenu/) or [rofi](https://github.com/davatorium/rofi), sort through the results and open the selected URL in you prefered web browser. Works with almost any Searx instance and you can change which one to use easily.  
![Demo](images/demo.GIF)

# Prerequisites
The program requires [jq](https://stedolan.github.io/jq/), a JSON processor, to work.

# Installation
If you wish to receive error notifications at anywhere but the terminal, see `Notifier` under `Config` on how to set a notification program.  
The program does not have a set Searx instance, check in `Searx Instance` under `Config` below to see how to set one.  
The default browser is set to surf, so see `Browser` under `Config` on how to change that.  

# Config
The entire script exists within `menusearx`, open it up to start configuring things.  

## Menu Program
Uncomment the line under `# assign menu prorgram` relating to your preferred menu application, or add your own.  
If you wish to change the colour of your menu program, that can be accomplished by appending whatever flags are needed to the `menu` variable.

## Notifier
To receive error notifcations at the desktop, as is highly reccomended, you can change the `notifier` variable to the notification program. In many cases, it is `notify-send` that is used.

## Searx Instance
You can set a Searx instance by changing the `instance` variable to the instance's domain name.

## Browser
You can set a Searx instance by changing the `browser` variable to the instance's domain name.

## Temporary Files Directory
If you do not wish to have temporary files be stored under `/tmp/menusearx`, you can change this directory by changing the `cachedir` variable to the desired directory.  
