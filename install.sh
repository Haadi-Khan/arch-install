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
