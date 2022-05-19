#!/bin/bash
echo "Haadi's Jank Arch Install Script

This script will install basically everything you need
to have my exact desktop configuration
If you somehow don't have git installed as of now, make sure
to get it now."

read -p "Are you ready to begin the setup? [y/N]? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    yay -S git
    cat "list.md" | xargs yay -S --noconfirm
    rm -rf ~/.config
    git clone https://github.com/Haadi-Khan/.config.git ~/.config
fi

echo "You have now completed installing the base programs and config
Next, here are some additional utilities which are needed for the system
to function properly"

read -p "Install the additional utilities? [y/N]? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    git clone https://github.com/nan0s7/nfancurve.git
    git clone https://github.com/rizmut/libreoffice-style-colibre
    git clone https://github.com/Diolinux/PhotoGIMP
fi

echo "Now, go and install the appropriate files for nfancurve,
libreoffice icons, and photogimp. Go to their respective folders in ~
"

echo "Almost done. Just remember to get Badlion Client's appimage
since you're a MC sweat, as well as installing your steam games.
Enjoy setting up the rest of the programs which don't just have configs"
