import os

os.system("sudo pacman -S \
        sway \
        swayidle \
        swaylock \
        waybar \
        wl-clipboard\
        mako \
        wofi \
        gammastep \
        grim \
        slurp \
        kitty \
        ranger \
        neovim \
        firefox \
        qutebrowser \
        ttf-font-awesome \
        playerctl \
        zsh \
        sudo \
        neofetch \
        bash-completion \
        htop \
        bat \
        wget \
        make \
        cmake \
        pip \
        ipython \
        networkmanager \
        network-manager-applet \
        bluez \
        bluez-tools \
        blueman \
        gparted \
        spotifyd \
        flatpak \
        acpid \
        ttf-font-awesome \
        --noconfirm ")

print("\n")
print("The following packages need to be built from source or" + \
        ", at least, cannot be install from Arch repositories")
print("oh-my-zsh\nsworkstyle\nRust\nVim-Plug")

print("yay -S chromium-widevine flat-remix")
