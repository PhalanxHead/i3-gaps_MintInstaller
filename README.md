# PhalanxHead/i3-gaps_MintInstaller
### Installs i3-gaps on a Linux Mint 18.1 installation with some minor config tweaks.

Installer based heavily off Erik Dubois' i3 Installer (https://github.com/erikdubois/LinuxMint18i3), but is a little more modular and doesn't rebind your keyboard.
Config Tweaks are all based off Code Cast's "i3wm: Configuration (2/3)" and "i3wm: How to "Rice" Your Desktop (3/3)" videos, found here:

https://youtu.be/8-S0cWnLBKg \\
https://youtu.be/ARKIwOlazKI

Alex explains all the config changes in-depth, and if you want to learn how to configure your own setup, this is a great place to start.
This Installer assumes a clean install of Linux Mint 18.1, though it should work fine for any Debian or Ubuntu-based linux install, clean or established (though I haven't tested it so I can't guarantee it.)

## Installation
Similar to Erik Dubois' Mint 18.1 Installer (https://github.com/erikdubois/LinuxMint18i3), this installer has various parts. To choose which elements to install, just comment out which elements you don't want in the "AutoInstall.sh" file. For example, if you just want a clean i3-gaps installation, comment out everything but the "InstallDependencies" and "Installi3" lines.
If you want to copy my entire "basic i3 setup," run the file as it is.

Unlike Erik's installer, this has no major key rebindings or shortcuts changes. It's completely non-obtrusive apart from the colour and theme changes, and the default program changes.

#### Instructions
1. Upgrade your Linux install (run `sudo apt-get upgrade`) if you want to.

2. Install any applications that you like/want

3. Clone or download this repo to a new directory anywhere on your system.

3.1 If you want to clone it and you don't have Git installed, run the following code:
```
sudo apt-get install git
```
3.2 Then run the following:
```
git clone https://github.com/PhalanxHead/i3-gaps_MintInstaller.git ~/.i3/i3-gaps_MintInstaller.git
cd ~/.i3/i3-gaps_MintInstaller/
```

4. Edit the installer as required. See the Configuration Section below for more details, or read the "AutoInstaller.sh" file.

5. Run the following:
```
sudo chmod +x AutoInstaller.sh
./AutoInstaller.sh
```

## Configuration
### Read the i3wm Documentation for Configuration Instructions!\
Visit i3wm.org for more info!!
### This Installer
Each section installs different elements of my personal i3 setup.
1. The "core" section installs i3-gaps and all its dependencies (so obviously
   you should leave this to be installed)
2. The "UItweakApps" section installs all of the basic elements for a decent looking i3 setup, notably compton, feh and lxappearence. 
   The second script here will add all of the elements to the i3-config file to run these on startup so you're not looking at a blank screen when you first open i3 (because that's a little daunting.)
   The third script here will install the Ubuntu and FontAwesome Font families, which are used in my configs. They're also nice fonts so why not install them?
3. The "MyApps" section will install (but not default) all the applications I use when computing, barring LaTeX because it's rather large. It's more for me when I rebuild my Linux install, but you're welcome to it :D
4. The "MyConfigs" section just installs the bare elements of my configs, without my key rebindings. A version with key rebindings has been included but isn't installed by default because I assume someone is going to run this without reading everything and then get confused with some of my key commands, just like I did when I first tried one of these automatic installers.

## Attributions
Obviously a bunch of this code comes from Erik Dubois' installer, notably in the "core" section. The included photo is a stock image from Linux Mint, and I'm assuming users will replace this almost immediately. All other attribution can be found in-code if relevant.
