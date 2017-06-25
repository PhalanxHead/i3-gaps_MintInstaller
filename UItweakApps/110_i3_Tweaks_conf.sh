#!/bin/bash
################################################################################
#
# Name:         110_i3_Tweaks_conf.sh
# Parent:       i3_gaps_MintInstaller/UItweakApps
# Author:       PhalanxHead (https://github.com/PhalanxHead/)
# Date:         24/Jun/2017
#
# Purpose:      Installs UI Tweaking Apps Configurations
#
# Attribution:  Info on tweak apps from Code Cast's Youtube series (see README)
#
#   As always, read the code before you run it!
#
################################################################################

# Run the config wizard for i3 - this will generate an config file for i3 that
# we can append to, in order to make the UI Tweaks run properly.
sudo i3-config-wizard

# Test that the config file is there, if not, ask for the path.
# NOTE This is really shitty code right now, I intend to fix it soon.
# That being said, if you're using the program as intended, it'll be okay. In
# theory...
if [ -e "$HOME/.config/i3/config" ]; then
    $path="$HOME/.config/i3/"
elif [ -e "$HOME/.i3/config" ]; then
    $path="$HOME/.i3/"
else
    echo "ERROR: i3 config not found."
    echo "Enter i3 config path INCLUDING filename: "
    read path
    $path=$(dirname $path)
    if [ ! -e "$path/config" ]; then
        echo "That isn't right either. Now Exiting..."
        exit 1
    fi
fi

# Appends the line to run compton at startup to the end of the
# config file. This will make sure you have transparency/fades
# on startup.
echo "exec compton -f" >> "$path/config"

# Creates a Wallpapers folder in your pictures folder and copies
# the supplied image (curtesy of Linux Mint) into the folder
pushd .
cd $HOME/Pictures/
mkdir Wallpapers
popd

cp ../Wall.jpg $HOME/Pictures/Wallpapers/Wall.jpg
echo "exec_always --no-startup-id feh --bg-scale ~/Pictures/Wallpapers/Wall.jpg" >> "$path/config"

# Adds gaps to the i3 config, just to prove i3 gaps is working.
echo "gaps outer 15" >> "$path/config"
echo "gaps inner 10" >> "$path/config"

pushd .

# Print Success!!
echo
echo
echo "________________________________________________________________________"
echo
echo "  UI Configs Insterted!"
echo
echo "________________________________________________________________________"

sleep 2
