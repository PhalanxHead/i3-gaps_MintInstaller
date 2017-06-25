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

rm -rf /tmp/Fonts
mkdir /tmp/Fonts
mkdir ~/.fonts
cd /tmp/Fonts
curl http://font.ubuntu.com/download/ubuntu-font-family-0.83.zip > /tmp/Fonts/Ubuntu.zip
unzip ./Ubuntu.zip
mv ./u*/*.ttf $HOME/.fonts/

curl http://fontawesome.io/assets/font-awesome-4.7.0.zip > /tmp/Fonts/FontAwesome.zip
unzip ./FontAwesome.zip
mv ./f*/fonts/*.ttf $HOME/.fonts/

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
