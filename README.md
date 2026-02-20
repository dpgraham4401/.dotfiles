# .dotfiles (Macbook branch)

## Installation and Usage

These dotfiles use [GNU stow](https://www.gnu.org/software/stow/) to symlink files to the appropriate place.


1. install git, stow if not already installed
    ```shell
     brew install git stow
    ```
2. Clone thsi git repo into $HOME/.dotfiles
    ```shell
    git clone git@github.com:dpgraham4401/.dotfiles $HOME/.dotfiles
    ```
3. stow files from the directories you need (see `stow -h`)
    ```shell
    stow configs shell scripts
    ```

or use the ./stowAll.sh script (see `./stowAll.sh -h`)

    ```shell
    chmod +x ./stowAll.sh && ./stowAll.sh
    ```

Note: stow will not replace a file that is already present, but it will complain to stdout. Remeber to back up those files incase you'd don't like these configs.  
You can also move them to `~/.dotfiles/archive`, this directory is not stowed but it is checked into git

    ```shell
    mv ~/.bashrc ~/.bashrc.bak
    ```

4. A script to help install packages is found in `$HOME/.local/bin` directory with list of text files in `$HOME/.local/share`
    ```shell
    # ~/.local/share/Brewfile will be used by default if the -f/--file flag is not provided
    chmod +x ~/.local/share/bin/installpkgs && installpkgs -f ~/.local/share/Brewfile
    ```
## Notes

*You should inspects random scripts from the internet before running them, like this one.*

[oh my zsh](https://ohmyz.sh/) will automtically be downloaded the first time you open a zsh shell after stowing,
but you still need to install brew [brew](https://brew.sh)

Optional:

- [rustup](https://rustup.rs/)
- [uv](https://docs.astral.sh/uv/)

