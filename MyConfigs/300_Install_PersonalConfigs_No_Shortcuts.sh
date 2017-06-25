#!/bin/bash
################################################################################
#
# Name:         300_Install_PersonalConfigs.sh
# Parent:       i3_gaps_MintInstaller/MyConfigs
# Author:       PhalanxHead (https://github.com/PhalanxHead/)
# Date:         25/Jun/2017
#
# Purpose:      Installs the config files I use to form a base system
#
# NOTE: I have included a config file with or without shortcuts! Remember to
#       change which version you want if you want the shortcuts installed for
#       some dumb reason :p
#
#   As always, read the code before you run it!
#
################################################################################

cd ./MyConfigs
cp ./.gtkrc-2.0 ~/.gtkrc-2.0
cp -R -f -T ./.config_n ~/.config/

cd ~/

echo "________________________________________________________________________"
echo
echo
echo "  Configs Installed!"
echo
echo "________________________________________________________________________"

sleep 2
