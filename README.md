# .dotfiles
<!-- ![test](https://i.ibb.co/xMmpgrw/screenshot-21-08-27-09-42.png) -->
![test2](https://i.ibb.co/xYbCZwj/screenshot-22-02-18-15-20.png)

## Install ##
Uses [GNU stow](https://www.gnu.org/software/stow/) to symlink files to the appropriate place
1. install git and stow and python if not already installed
```$ pacman -S git stow python3 ```
2. Clone thsi git repo into $HOME/.dotfiles
```$ git clone git@github.com:dpgraham4401/.dotfiles $HOME/.dotfiles```
3. stow files
```$ stow configs shell scripts```
- or use the ./stowAll.sh script directories (see ./stowAll.sh -h)
```$ chmod +x ./stowAll.sh && ./stowAll.sh```
4. A script with accompanying text files with packages is in the $HOME/Scripts directory
``` $ cd $HOME/Scripts```
``` $ chmod +x ./install_pkgs && ./install_pkgs --path fedora_all.txt```

### sway essesitals
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
5. [gammastep](https://gitlab.com/chinstrap/gammastep)
6. [grim](https://github.com/emersion/grim)
7. [slurp](https://github.com/emersion/slurp)
8. [Rust](https://rustup.rs/)
### Other applications
1. [kitty](https://sw.kovidgoyal.net/kitty/)
2. [Ranger](https://github.com/ranger/ranger)
3. [zsh](https://zsh.sourceforge.io/)
4. [oh-my-zsh](https://github.com/ohmyzsh)
5. [neovim](https://github.com/neovim/neovim)
6. [firefox-wayland](https://www.mozilla.org/en-US/firefox/)
7. [qutebrowser](https://github.com/qutebrowser/qutebrowser)

### Fedora specific
1. qt5-qtwebengine-freeworld to play DRM (netflix etc.) on the qutebrowser

### Arch specific
1. chromium-widevine &rarr; simplicity to play DRM on arch 

### tips
1. add the following to /etc/environment to use java applications like pycharm
```bash
if [ "$XDG_SESSION_DESKTOP" = "sway" ] ; then
    export _JAVA_AWT_WM_NONREPARENTING=1
fi
```

