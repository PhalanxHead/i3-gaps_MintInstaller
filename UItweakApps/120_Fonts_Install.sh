#!/bin/bash
################################################################################
#
# Name:         120_Fonts_Install.sh
# Parent:       i3_gaps_MintInstaller/UItweakApps
# Author:       PhalanxHead (https://github.com/PhalanxHead/)
# Date:         24/Jun/2017
#
# Purpose:      Installs the Ubuntu Fonts and Font Awesome fonts
#
#   As always, read the code before you run it!
#
################################################################################

# Font Directory: Change this if you like your fonts elsewhere!
$FontDir=$HOME/.fonts

rm -rf /tmp/Fonts
mkdir /tmp/Fonts
cd /tmp/Fonts
curl http://font.ubuntu.com/download/ubuntu-font-family-0.83.zip > /tmp/Fonts/Ubuntu.zip
unzip Ubuntu.zip
mv Ubuntu/*.ttf $FontDir

curl http://fontawesome.io/assets/font-awesome-4.7.0.zip > /tmp/Fonts/FontAwesome.zip
unzip FontAwesome.zip
mv FontAwesome/fonts/*.ttf $FontDir

sudo rm -rf /tmp/Fonts
cd $HOME

# Print Success!!
echo
echo
echo "________________________________________________________________________"
echo
echo "  Fonts Installed!"
echo
echo "________________________________________________________________________"

sleep 2
