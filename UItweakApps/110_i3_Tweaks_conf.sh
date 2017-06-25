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
i3-config-wizard

# Appends the line to run compton at startup to the end of the
# config file. This will make sure you have transparency/fades
# on startup.
echo "exec compton -f" >> "$HOME/.config/i3/config"

# Creates a Wallpapers folder in your pictures folder and copies
# the supplied image (curtesy of Linux Mint) into the folder
cd $HOME/Pictures/
mkdir Wallpapers

cp ~/.i3/i3-gaps_MintInstaller/Wall.jpg ~/Pictures/Wallpapers/Wall.jpg
echo "exec_always --no-startup-id feh --bg-scale ~/Pictures/Wallpapers/Wall.jpg" >> "$HOME/.config/i3/config"

# Adds gaps to the i3 config, just to prove i3 gaps is working.
echo "gaps outer 15" >> "$HOME/.config/i3/config"
echo "gaps inner 10" >> "$HOME/.config/i3/config"

# Print Success!!
echo
echo
echo "________________________________________________________________________"
echo
echo "  UI Configs Insterted!"
echo
echo "________________________________________________________________________"

sleep 2
