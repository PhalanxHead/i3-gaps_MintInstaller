#!/bin/bash
################################################################################
#
# Name:         100_i3_Tweaks.sh
# Parent:       i3_gaps_MintInstaller/UItweakApps
# Author:       PhalanxHead (https://github.com/PhalanxHead/)
# Date:         24/Jun/2017
#
# Purpose:      Installs UI Tweaking Apps
#
# Attribution:  Info on tweak apps from Code Cast's Youtube series (see README)
#               Installing GTK theme from here:
#               http://www.omgubuntu.co.uk/2016/06/install-latest-arc-gtk-theme-ubuntu-16-04
#
#   As always, read the code before you run it!
#
################################################################################


# Compton is an X11 Compositor, which has a range of uses but mainly we want
# it for the transparency and fading visuals effects.
sudo apt-get install -y compton

# feh is an image viewer and command-line based wallpaper changer for X11.
sudo apt-get install -y feh

# lxappearance is a GUI app that allows you to change the GTK themes and fonts
# at will, it's quite easy to use. You can configure this manually once the
# install is done, though my GTK configs are included.
sudo apt-get install -y lxappearance

# Installs the Arc GTK themes, which are used in my configs.
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' >> /etc/apt/sources.list.d/arc-theme.list"
sudo apt-get update && sudo apt-get install -y --allow-unauthenticated arc-theme
sudo wget http://download.opensuse.org/repositories/home:Horst3180/xUbuntu_16.04/Release.key
sudo apt-key add - < Release.key
rm Release.key

# Thunar is a GUI file browser. It's a little less nasty to use with i3 than
# nemo, which is the Mint default, as it doesn't open a desktop over your 
# X11 session. You can configure nemo not to do this, however this is a little
# simpler.
sudo apt-get install -y thunar


echo
echo
echo "________________________________________________________________________"
echo
echo
echo "  UI Tweaks Installed!"
echo
echo "________________________________________________________________________"

sleep 2
