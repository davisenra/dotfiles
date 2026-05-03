#!/usr/bin/env sh

source_nixos_configuration=~/dotfiles/nixos/configuration.nix
target_nixos_configuration=/etc/nixos/configuration.nix

source_nixos_home=~/dotfiles/nixos/home.nix
target_nixos_home=/etc/nixos/home.nix

source_nixos_hardware=~/dotfiles/nixos/hardware-configuration.nix
target_nixos_hardware=/etc/nixos/hardware-configuration.nix

create_link() {
    if [ -e "$2" ]; then
        rm "$2"
        echo "Removed existing file: $2"
    fi
    ln -s "$1" "$2"
    echo "Created symlink: $2 -> $1"
}

create_link_sudo() {
    if [ -e "$2" ]; then
        sudo rm "$2"
        echo "Removed existing file: $2"
    fi
    sudo ln -s "$1" "$2"
    echo "Created symlink: $2 -> $1"
}

create_link_sudo "$source_nixos_configuration" "$target_nixos_configuration"
create_link_sudo "$source_nixos_home" "$target_nixos_home"
create_link_sudo "$source_nixos_hardware" "$target_nixos_hardware"
