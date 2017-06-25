#!/bin/bash
################################################################################
#
# Name:         AutoInstaller.sh
# Parent:       i3-gaps_MintInstaller
# Author:       PhalanxHead (https://github.com/PhalanxHead/)
# Date:         25/Jun/2017
#
# Purpose:      Installs all of the i3-gaps setup
#
# NOTE: Comment the parts that you don't want, but remember to
#       leave the `cd` into the i3-gaps_MintInstaller directory for each script!
#   As always, read the code before you run it!
#
################################################################################

# Install the core!! (Required)
cd ~/.i3/i3-gaps_MintInstaller/
sudo ./core/000_i3_plain.sh

cd ~/.i3/i3-gaps_MintInstaller/
sudo ./core/010_i3-gaps_dependencies.sh

cd ~/.i3/i3-gaps_MintInstaller/
sudo ./core/020_i3-gaps_install.sh

# Install the UI Tweak Apps
cd ~/.i3/i3-gaps_MintInstaller/
sudo ./UItweakApps/100_i3_Tweaks.sh

cd ~/.i3/i3-gaps_MintInstaller/
sudo ./UItweakApps/110_i3_Tweaks_conf.sh

cd ~/.i3/i3-gaps_MintInstaller/
sudo ./UItweakApps/120_Fonts_Install.sh

# Install My Apps
cd ~/.i3/i3-gaps_MintInstaller/
sudo ./MyApps/200_Install_Personal_Apps.sh

# Install My Configs No Shortcuts!
cd ~/.i3/i3-gaps_MintInstaller/
sudo ./MyConfigs/300_Install_Personal_Configs_No_Shortcuts.sh

# Install My Configs with Shortcuts!
#cd ~/.i3/i3-gaps_MintInstaller/
#sudo ./MyConfigs/300_Install_Personal_Configs_Shortcuts.sh

cd ~/.i3
rm -rf ./i3-gaps_MintInstaller
cd $HOME

# Print Success!!
echo
echo
echo "________________________________________________________________________"
echo
echo "  Complete!! Restart your computer and log into i3 now!"
echo
echo "________________________________________________________________________"
