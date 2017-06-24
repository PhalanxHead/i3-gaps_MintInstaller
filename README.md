# PhalanxHead/i3-gaps_MintInstaller
### Installs i3-gaps on a Linux Mint 18.1 installation with some minor config tweaks.

Installer based heavily off Erik Dubois' i3 Installer (https://github.com/erikdubois/LinuxMint18i3), but is a little more modular and doesn't rebind your keyboard.
Config Tweaks are all based off Code Cast's "i3wm: Configuration (2/3)" and "i3wm: How to "Rice" Your Desktop (3/3)" videos, found here:

https://youtu.be/8-S0cWnLBKg \\
https://youtu.be/ARKIwOlazKI

Alex explains all the config changes in-depth, and if you want to learn how to configure your own setup, this is a great place to start.
This Installer assumes a clean install of Linux Mint 18.1, though it should work fine for established installs (though I haven't tested it so I can't guarantee it.)

## Installation
Similar to Erik Dubois' Mint 18.1 Installer (https://github.com/erikdubois/LinuxMint18i3), this installer has various parts. To choose which elements to install, just comment out which elements you don't want in the "AutoInstall.sh" file. For example, if you just want a clean i3-gaps installation, comment out everything but the "InstallDependencies" and "Installi3" lines.
If you want to copy my entire "basic i3 setup," run the file as it is.

Unlike Erik's installer, this has no major key rebindings or shortcuts changes. It's completely non-obtrusive apart from the colour and theme changes, and the default program changes.

#### Instructions
1. Clone or download this repo to a new directory anywhere on your system.

1.1 If you want to clone it and you don't have Git installed, run the following code:
```
sudo apt-get install git
```
1.2 Then run the following:
```
git clone https://github.com/PhalanxHead/i3-gaps_MintInstaller.git ~/.i3/i3-gaps_MintInstaller.git
cd ~/.i3/i3-gaps_MintInstaller/
```

2. Edit the installer as required. See the Configuration Section below for more details, or read the "AutoInstaller.sh" file.

3. Run the following:
```
./AutoInstaller.sh
```

## Configuration
### Read the i3wm Documentation for Configuration Instructions!\
Visit i3wm.org for more info!!
### My Install
Coming Soon!!
