################################################################################
#
# Name:         000_i3_plain.sh
# Parent:       i3_gaps_MintInstaller/core
# Author:       PhalanxHead (https://github.com/PhalanxHead/)
# Date:         24/Jun/2016
#
# Purpose:      Installs the core i3 Window Manager (non-gaps edition) from the
#               Ubuntu repositories.
#
# Attribution:  Taken from Erik Dubois' Installer: 
#               https://github.com/erikdubois/LinuxMint18i3
#
#   As always, read the code before you run it!
#
################################################################################


# Install the core elements!
sudo apt-get install -y i3 i3lock i3staus i3-wm
sudo apt-get install dmenu

echo
echo
echo "________________________________________________________________________"
echo
echo "   Core Installed!"
echo
echo "________________________________________________________________________"

sleep 2
