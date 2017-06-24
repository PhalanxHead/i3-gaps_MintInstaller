################################################################################
#
# Name:         020_i3-gaps_install.sh
# Parent:       i3_gaps_MintInstaller/core
# Author:       PhalanxHead (https://github.com/PhalanxHead/)
# Date:         24/Jun/2017
#
# Purpose:      Installs i3-gaps from https://github.com/Airblader/i3.git
#
# Attribution:  Taken from Erik Dubois' Installer: 
#               https://github.com/erikdubois/LinuxMint18i3
#
#   As always, read the code before you run it!
#
################################################################################

# Clear the tmp file just in case!
rm -rf /tmp/Airblader

# Clone i3-gaps from github, cd into the file
git clone https://github.com/Airblader/i3.git /tmp/Airblader
cd /tmp/Airblader

# Auto Install as per i3-gaps instructions
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/

../configure --prefix=/usr --sysconfdir=/etc

# Make and Install
make && sudo make install

# Delete unneeded install files
rm -rf /tmp/Airblader

echo "You installed following version"
echo
echo
i3 --version
echo
echo
echo "________________________________________________________________________"
echo
echo "   i3-gaps Installed!"
echo
echo "________________________________________________________________________"

sleep 2
