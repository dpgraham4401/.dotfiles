#!/usr/bin/python
"""docstring"""

import argparse
import subprocess
import sys
import os
import shutil


def install_cli():
    """ Conn's command line interface for conn """
    # Top level: --version, --help, sub commands
    parser = argparse.ArgumentParser(description="install packages from a text file on various distros")
    parser.add_argument('-v','--version', action='version', version="why are you checking the version? it's an install script. loser.")
    
    parser.add_argument('path',
                        help='path to the text file with packages to install')

    parser.add_argument('--config', '-c',
                        help='git repo URL with root at $HOME and .gitignore')

    parser.add_argument('--branch', '-b',
                        help='git repo branch')

    parser.add_argument('--packager', '-p',
                        help='package manager to use',
                        choices=['dnf', 'pacman'],
                        default='dnf')

    args = parser.parse_args()
    return args


def get_files(lines):
    directories = []
    files = []
    for i in lines:
        if i[0] == '!':
            files.append(i)
        elif '*' in i:
            directories.append(i)
    for i in files:
        print('file: ', i)
    for i in directories:
        print('dir: ', i)

def main():
    """docstring"""
    args = install_cli()
    git_args = ['git', 'clone', args.config]
    
    if args.config:
        try:
            shutil.which('git')
            print('git found')
        except:
            print("git not found")
            sys.exit()
        # subprocess.call(git_args) 
        os.chdir('./dotfiles-sway')
        gitignore_file = open('./.gitignore', 'r')
        lines = gitignore_file.readlines()
        get_files(lines)


if __name__ == '__main__':
    main()
