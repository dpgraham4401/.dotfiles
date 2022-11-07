#!/bin/bash


Help()
{
   # Display Help
   echo "Use GNU stow to stash all config in appropriate place"
   echo
   echo "Syntax: stowAll.sh [ -i | h ] "
   echo "options:"
   echo "i     ignore these directories"
   echo "h     Print this help and exit"
   echo 
   echo "example ./stowAll.sh -i 'sway scripts' "
   echo 
}

DOTFILE_DIR="$HOME/.dotfiles"

while getopts i:h flag
do
    case "${flag}" in
        i) ignore="$ignore ${OPTARG}";;
        h) 
            Help
            exit;;
    esac
done

# stow all packages
if command -v stow &> /dev/null
then
    for entry in "$DOTFILE_DIR"/*
    do
        package="$(basename $entry)"
        if [[ -d $package ]]
        then
            if [[ $ignore == *"$package"* ]]
            then
                echo "ignoring "$(basename $entry)
            elif [[ "archive" == *"$package"* ]]
            then
                :
            else
                echo "stowing: "$(basename $entry)
                stow $(basename $entry)
            fi
        fi
    done
else
    echo "GNU stow command not found"
fi


