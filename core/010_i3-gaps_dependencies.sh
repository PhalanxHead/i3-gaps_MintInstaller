#!/bin/bash
################################################################################
#
# Name:         010_i3-gaps_dependencies.sh
# Parent:       i3_gaps_MintInstaller/core
# Author:       PhalanxHead (https://github.com/PhalanxHead/)
# Date:         24/Jun/2017
#
# Purpose:      Installs the dependencies for i3-gaps
#
# Attribution:  Taken from Erik Dubois' Installer: 
#               https://github.com/erikdubois/LinuxMint18i3
#
#   As always, read the code before you run it!
#
################################################################################

# Adds libxcb-xrm-dev repository (required!!)
sudo add-apt-repository ppa:aguignard/ppa
sudo apt-get update

# Install Standard C Libraries, etc. (required)
sudo apt-get install -y build-essential
# Tools for simple compilation and configuration (required)
sudo apt-get install -y make
sudo apt-get install -y automake
sudo apt-get install -y autoconf
# GNU tool for library handling (recommended)
sudo apt-get install -y libtool
# X setup (required)
sudo apt-get install -y xutils-dev xcb libxcb-composite0-dev
# Documentation tool (recommended)
sudo apt-get install -y doxygen

# Library Dependencies for i3-gaps (required)
sudo apt-get install -y libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev 
sudo apt-get install -y libxcb-util0-dev libxcb-icccm4-dev libyajl-dev 
sudo apt-get install -y libstartup-notification0-dev libxcb-randr0-dev 
sudo apt-get install -y libev-dev libxcb-cursor-dev libxcb-xinerama0-dev 
sudo apt-get install -y libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev
sudo apt-get install -y libxcb-xrm-dev

# Curl is a command line download tool. (recommended)
sudo apt-get install -y curl


echo
echo
echo "________________________________________________________________________"
echo
echo "   Dependencies Installed!"
echo
echo "________________________________________________________________________"

sleep 2
