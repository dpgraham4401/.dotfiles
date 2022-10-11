# .dotfiles
![desktop screenshot](https://i.ibb.co/xYbCZwj/screenshot-22-02-18-15-20.png)

## Install and Usage ##
Only 2 packages are needed to get started, Git to clone these configs, and [GNU stow](https://www.gnu.org/software/stow/) to symlink files to the appropriate place on the local machine

1. Install git & stow, if not already installed
```bash
$ sudo pacman -S git stow
```
2. Fork this repo and Clone the configs into $HOME/.dotfiles
```bash
$ git clone git@github.com:{{GitHub Username Here}}/.dotfiles $HOME/.dotfiles && cd $HOME/.dotfiles
```

3. The Configs in this repo are broken up by catagory. Pick and choose which catagories you want by directory (see `stow -h`)
```bash
$ stow configs shell scripts # e.g. will symlink all config files in ./configs, ./shell, & ./scripts 
```
or use the ./stowAll.sh shell script in the repo root (see `./stowAll.sh -h`)
```
$ chmod +x ./stowAll.sh && ./stowAll.sh
```
Note: stow will not replace a file that is already present, but it will complain to stdout. Remeber to back up those files incase you'd don't like these configs, then you can use stow/stowAll.sh again. 
```
$ mv ~/.bashrc ~/.bashrc.bak && ./stowAll.sh
```

4. A script to help install packages, is found in `$HOME/.local/bin/install_pkgs` with accompanying text files, with lists of packages, in the `$HOME/.local/share/` directory
	- fedora_all.txt
	- fedora_sway.txt
	- fedora_devel.txt
	- arch_pkgs.txt
	- brew_pkgs.txt (for macos and HomeBrew)
```
$ chmod +x ~/.local/bin/install_pkgs && install_pkgs -d "arch" -f ~$HOME/.local/arch_pkgs.txt
```

### Packages
1. [sway](https://github.com/swaywm/sway)
2. [swaylock](https://github.com/swaywm/swaylock)
3. [swayidle](https://github.com/swaywm/swayidle)
4. [sworkstyle](https://github.com/Lyr-7D1h/swayest_workstyle)
5. [waybar](https://github.com/Alexays/Waybar)
6. [mako](https://github.com/emersion/mako)
7. [wev](https://git.sr.ht/~sircmpwn/wev)
8. [wofi](https://hg.sr.ht/~scoopta/wofi)
### Useful Utilities
1. [playerctl](https://github.com/altdesktop/playerctl)
2. [pulseaudio (pactl)](https://freedesktop.org/software/pulseaudio/pavucontrol/)
3. [pavucontrol](https://freedesktop.org/software/pulseaudio/pavucontrol/)
4. [light](https://github.com/haikarainen/light) (or [brightnessctl](https://github.com/Hummer12007/brightnessctl))
5. [grim](https://github.com/emersion/grim)
6. [slurp](https://github.com/emersion/slurp)
### Applications
1. [foot](https://codeberg.org/dnkl/foot/commits/branch/master) 
2. [kitty](https://sw.kovidgoyal.net/kitty/)
3. [Ranger](https://github.com/ranger/ranger)
4. [zsh](https://zsh.sourceforge.io/)
5. [oh-my-zsh](https://github.com/ohmyzsh)
6. [neovim](https://github.com/neovim/neovim)
7. [firefox-wayland](https://www.mozilla.org/en-US/firefox/)
8. [qutebrowser](https://github.com/qutebrowser/qutebrowser)
### Applets (tray)
1. [blueman-applet](https://github.com/blueman-project/blueman)
2. [gammastep-indicator](https://gitlab.com/chinstrap/gammastep)
3. [nm-applet (Network Manager)](https://gitlab.gnome.org/GNOME/network-manager-applet)

## Notes
### Fedora specific
1. qt5-qtwebengine-freeworld to play DRM (netflix etc.) on qutebrowser
    * This is a finicky process, I usually just install chromium-freeworld. It may not work immeadiately. Not sure why. 

### Arch specific
1. chromium-widevine &rarr; will install dependencies to play DRM on arch

### PyPi Packages
1. [autotiling](https://github.com/nwg-piotr/autotiling)

## Other Tips
1. add the following to /etc/environment to use java applications like PyCharm
```bash
if [ "$XDG_SESSION_DESKTOP" = "sway" ] ; then
    export _JAVA_AWT_WM_NONREPARENTING=1
fi
```

