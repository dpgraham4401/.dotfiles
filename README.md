# .dotfiles (Macbook M1 branch)
This branch differs from the other two, I don't have a tiling window manager for mac, I haven't found one that was worth it

## Install and Usage ##
Uses [GNU stow](https://www.gnu.org/software/stow/) to symlink files to the appropriate place
1. install git, stow if not already installed
```
$ brew install git stow
```
2. Clone thsi git repo into $HOME/.dotfiles
```
$ git clone git@github.com:dpgraham4401/.dotfiles $HOME/.dotfiles
```
3. stow files from the directories you need (see `stow -h`)
```
$ stow configs shell scripts
```
or use the ./stowAll.sh script (see `./stowAll.sh -h`)
```
$ chmod +x ./stowAll.sh && ./stowAll.sh
```
Note: stow will not replace a file that is already present, but it will complain to stdout. Remeber to back up those files incase you'd don't like these configs.  
You can also move them to `~/.dotfiles/archive`, this directory is not stowed but it is checked into git
```
$ mv ~/.bashrc ~/.bashrc.bak
```
4. A script to help install packages is found in `$HOME/.local/bin` directory with list of text files in `$HOME/.local/share`
```
$ chmod +x ~/.local/share/bin/install_pkgs && install_pkgs -f ~/.local/share/brew_pkgs.txt
```
*You should inspects random scripts from the internet before running them, like this one.*

