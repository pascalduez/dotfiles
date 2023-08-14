#!/usr/bin/env bash

##
# Install a selection of base packages
##
command -v pacman >/dev/null 2>&1 && {
    # Archlinux installation
    sudo pacman -Suy
    sudo pacman -S zsh git tig ack tmux htop wget curl ngrep httpdump nmap \
        traceroute openbsd-netcat bind-tools vim neovim gnupg tree httpie jq \
        ttf-fira-mono
}

command -v apt-get >/dev/null 2>&1 && {
    # Debian installation
    sudo apt-get install zsh git ack-grep tmux htop wget curl tree
}
