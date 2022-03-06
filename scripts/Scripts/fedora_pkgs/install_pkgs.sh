#!/bin/bash

Help()
{
   # Display Help
   echo "Use GNU stow to stash all config in appropriate place"
   echo
   echo "Syntax: stowAll.sh [ -f <file>] [-d <distro>] "
   echo "options:"
   echo "i     text file with list of packages to install"
   echo "d     distro fedora, debian, or arch based"
   echo "h     Print this help and exit"
   echo 
   echo "example: ./install_from_text.sh -f fedora_all.txt -d fedora"
   echo 
}

DOTFILE_DIR="$HOME/.dotfiles"

while getopts d:f: flag
do
    case "${flag}" in
        f) file="$file ${OPTARG}";;
        d) distro="$distro ${OPTARG}";;
        h) 
            Help
            exit;;
    esac
done

echo $distro
echo $file
if [ $distro == 'fedora' ]; then
    sudo dnf install --skip-broken $(cat $file)
    # echo "yes!"
elif [ $distro == "arch" ]
then
    sudo pacman -Syu $(cat $file)
elif [ $distro == "debian" ]
then
    sudo apt-get install $(cat $file)
else
    Help
fi


