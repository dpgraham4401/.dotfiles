# dotfiles-sway
### Fedora packages list
1. [sway](https://github.com/swaywm/sway)
2. [swaylock](https://github.com/swaywm/swaylock)
3. [swayidle](https://github.com/swaywm/swayidle)
4. [sworkstyle](https://github.com/Lyr-7D1h/swayest_workstyle)
5. [waybar](https://github.com/Alexays/Waybar)
6. [mako](https://github.com/emersion/mako)
7. [wev](https://git.sr.ht/~sircmpwn/wev)
8. [wofi](https://hg.sr.ht/~scoopta/wofi)
9. [kitty](https://sw.kovidgoyal.net/kitty/)
10. [firefox-wayland](https://www.mozilla.org/en-US/firefox/)
11. [playerctl](https://github.com/altdesktop/playerctl)
12. [pulseaudio (pactl)](https://freedesktop.org/software/pulseaudio/pavucontrol/)
13. [pavucontrol](https://freedesktop.org/software/pulseaudio/pavucontrol/)
14. [light](https://github.com/haikarainen/light) (or [brightnessctl](https://github.com/Hummer12007/brightnessctl))
15. [gammastep](https://gitlab.com/chinstrap/gammastep)
16. [grim](https://github.com/emersion/grim)
17. [slurp](https://github.com/emersion/slurp)
18. [Ranger](https://github.com/ranger/ranger)
19. [zsh](https://zsh.sourceforge.io/)
20. [oh-my-zsh](https://github.com/ohmyzsh)
21. [neovim](https://github.com/neovim/neovim)

just breaking it down for clarity 

#### Sway essentials
`$ sudo dnf install sway swaylock swayidle waybar wev mako sworkstyle`

#### Audio Control
`$ sudo dnf install pactl playerctl pavucontrol`

#### Backlight Control
`$ sudo dnf install light gammastep`

#### CLI goodness
`$ sudo dnf install kitty ranger zsh neovim`

#### Wayland Specific Applicatin/utilities
`$ sudo dnf install wofi firefox-wayland grim slurp`

#### non-dnf installs
1. oh-my-zsh

### pip packages
1. pylint pynvim

### npm packages (global)
1. eslint neovim


### Packages for vim
1. YouCompleteMe  &rarr; autocompletion
2. NerdTree       &rarr; file explorer
3. ale            &rarr; eslint and syntax checking
4. pear-tree      &rarr; auto pair ()""{} and such
5. ranger
6. vim-airline    &rarr; airline status bar (meh)
7. vim-airline-theme &rarr; color the status bar
