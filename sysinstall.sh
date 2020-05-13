#!/bin/bash

echo Updating packagelist
sudo pacman -Syu
echo Installing programs
sudo pacman -S steam discord go sdl2 sdl2_ttf sdl2_image sdl2_mixer nvidia lutris gimp vim neofetch
echo Installing \"yay\"
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay
echo Installing from AUR
yay -S ocs-url visual-studio-code-bin wd719x-firmware gotop-bin downgrade
echo Done
