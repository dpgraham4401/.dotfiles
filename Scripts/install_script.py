#!/usr/bin/python
"""
    install my Sway setup and the configuration files
"""

import argparse
import sys
import subprocess
import os
import shutil


def install_cli():
    """ Conn's command line interface for conn """
    # Top level: --version, --help, sub commands
    parser = argparse.ArgumentParser(description="install packages from a text file on various distros")
    parser.add_argument('-v','--version', action='version', version="why are you checking the version? it's an install script. loser.")
    
    parser.add_argument('path',
                        help='path to the text file with packages to install')

    parser.add_argument('--repo', '-r',
                        help='git repo URL with root at $HOME and .gitignore')

    parser.add_argument('--branch', '-b',
                        help='git repo branch')

    parser.add_argument('--packager', '-p',
                        help='package manager to use',
                        choices=['dnf', 'pacman'],
                        default='dnf')

    args = parser.parse_args()
    return args


def remove_new_line(lines):
    new_lines = []
    for git_line in lines:
        if git_line in ['\n', '\r\n']:
            pass
        else:
            new_lines.append(git_line.replace("\n", ""))
    return new_lines


def get_home_dir():
    home_raw = os.getenv('HOME')
    if home_raw == None:
        print("HOME environment not found")
        sys.exit(1)
    else:
        home = home_raw + '/'
    return home


def parse_gitignore(lines):
    home_dir = get_home_dir()
    directories = []
    files = []
    lines = remove_new_line(lines)
    for i in lines:
        if i[0] == '!':
            if i[-1] != '/':
                files.append(home_dir + i[1:])
        elif '*' in i:
            directories.append(home_dir + i[:-1])
    return files, directories

def git_clone(args):
    if args.config:
        try:
            shutil.which('git')
            git_args = ['git', 'clone', args.config, 'dotfiles-tmp']
            subprocess.call(git_args) 
            os.chdir('./dotfiles-tmp')
            if args.branch:
                branch_args = ['git', 'checkout', args.branch]
                subprocess.call(branch_args)
        except:
            print("Error while calling git subprocess")
            sys.exit(1)


def go_to_files(args):
    if args.repo:
        git_clone(args)
    else:
        os.chdir('..')


def get_files():
    gitignore_file = open('./.gitignore', 'r')
    lines = gitignore_file.readlines()
    files, dir = parse_gitignore(lines)
    return files, dir


def make_directories(dir):
    for i in dir:
        dir_args = ['mkdir', i, '-p']
        subprocess.call(dir_args)

def copy_files(file_path):
    for i in file_path:
        file = file_path.split(i, '/')[-1]
        cp_args = ['cp', file, i, '-u']
        subprocess.call(cp_args)


def main():
    args = install_cli()
    go_to_files(args)
    files, dir = get_files()
    make_directories(dir)
    copy_files(files)
    

if __name__ == '__main__':
    main()

