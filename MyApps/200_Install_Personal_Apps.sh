#!/bin/bash
################################################################################
#
# Name:         200_Install_Personal_Apps.sh
# Parent:       i3_gaps_MintInstaller/MyApps
# Author:       PhalanxHead (https://github.com/PhalanxHead/)
# Date:         24/Jun/2017
#
# Purpose:      Installs all of my personal blank-canvas apps.
#
# NOTE: Comment out any you don't want!
#
#   As always, read the code before you run it!
#
################################################################################

# Install Grub Customiser - Customises the page for the Grub Bootloader
sudo add-apt-repository ppa:danielrichter2007/grub-customizer
sudo apt-get update
sudo apt-get install -y --allow-unauthenticated grub-customizer

# Install Vim - a Text Editor
sudo apt-get install -y vim

# Install Atom - a GUI Text Editor
sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install -y --allow-unauthenticated atom

# Install Thunar - A GUI File Manager
sudo apt-get install -y thunar

# Install Ranger - A Command-Line File Manager
sudo apt-get install -y ranger

# Install rofi - a dmenu replacement.
sudo apt-get install -y rofi

# Install i3blocks - a relacement for i3status
sudo apt-get install -y i3blocks

# Install Spotify - Music Streaming Service
sudo apt-get install -y spotify-client

# Install VLC Media Player
sudo apt-get install -y vlc


# Print Success!!
echo
echo
echo "________________________________________________________________________"
echo
echo "  Apps Installed!"
echo
echo "________________________________________________________________________"

sleep 2
