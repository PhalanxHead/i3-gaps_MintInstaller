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
# at will, it's quite easy to use. You'll have to configure this manually after
# the installation as I haven't included the GTK configs.
sudo apt-get install -y lxappearance

# Thunar is a GUI file browser. It's a little less nasty to use with i3 than
# nemo, which is the Mint default, as it doesn't open a desktop over your 
# X11 session. You can configure nemo not to do this, however this is a little
# simpler.
sudo apt-get install -y thunar
