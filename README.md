# dotfiles-sway
### Fedora packages list
1. sway
2. swaylock
3. swayidle
4. waybar
5. wev
6. wofi
7. kitty
8. firefox-wayland
9. playerctl
10. pactl
11. pavucontrol
12. light (or brightnessctl)
13. gammastep
14. grim
15. slurp
16. Ranger

### pip packages
1. pylint

### npm packages (global)
1. eslint

just breaking it down for clarity 

#### Sway essentials
`$ sudo dnf install sway swaylock swayidle waybar wev`

#### Audio Control
`$ sudo dnf install pactl playerctl pavucontrol`

#### Backlight Control
`$ sudo dnf install light gammastep`

#### CLI goodness
`$ sudo dnf install kitty ranger`

#### Wayland Specific Applicatin/utilities
`$ sudo dnf install wofi firefox-wayland grim slurp`


### Packages for vim
1. YouCompleteMe  &rarr; autocompletion
2. NerdTree       &rarr; file explorer
3. ale            &rarr; eslint and syntax checking
4. pear-tree      &rarr; auto pair ()""{} and such