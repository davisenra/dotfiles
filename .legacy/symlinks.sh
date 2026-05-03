#!/usr/bin/env sh

create_link_sudo() {
    if [ -e "$2" ]; then
        sudo rm "$2"
        echo "Removed existing file: $2"
    fi
    sudo ln -s "$1" "$2"
    echo "Created symlink: $2 -> $1"
}

source_nixos_hardware=~/dotfiles/hardware-configuration.nix
target_nixos_hardware=/etc/nixos/hardware-configuration.nix

if [ -e /etc/nixos/configuration.nix ]; then
    sudo rm /etc/nixos/configuration.nix
    echo "Removed old symlink: /etc/nixos/configuration.nix"
fi

if [ -e /etc/nixos/home.nix ]; then
    sudo rm /etc/nixos/home.nix
    echo "Removed old symlink: /etc/nixos/home.nix"
fi

create_link_sudo "$source_nixos_hardware" "$target_nixos_hardware"