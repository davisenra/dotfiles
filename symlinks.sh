#!/usr/bin/env sh

source_zshrc=~/dotfiles/.zshrc
target_zshrc=~/.zshrc

source_kitty_conf=~/dotfiles/kitty/kitty.conf
target_kitty_conf=~/.config/kitty/kitty.conf

source_fastfetch_conf=~/dotfiles/fastfetch/config.jsonc
target_fastfetch_conf=~/.config/fastfetch/config.jsonc

source_alacritty_conf=~/dotfiles/alacritty/.alacritty.toml
target_alacritty_conf=~/.alacritty.toml

source_tmux_conf=~/dotfiles/tmux/.tmux.conf
target_tmux_conf=~/.tmux.conf

create_link() {
    if [ -e "$2" ]; then
        rm "$2"
        echo "Removed existing file: $2"
    fi
    ln -s "$1" "$2"
    echo "Created symlink: $2 -> $1"
}

create_link "$source_zshrc" "$target_zshrc"
create_link "$source_kitty_conf" "$target_kitty_conf"
create_link "$source_fastfetch_conf" "$target_fastfetch_conf"
create_link "$source_alacritty_conf" "$target_alacritty_conf"
create_link "$source_tmux_conf" "$target_tmux_conf"
