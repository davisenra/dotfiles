#!/usr/bin/env sh

source_zshrc=~/dotfiles/.zshrc
target_zshrc=~/.zshrc

source_fastfetch_conf=~/dotfiles/fastfetch/config.jsonc
target_fastfetch_conf=~/.config/fastfetch/config.jsonc

source_tmux_conf=~/dotfiles/tmux/.tmux.conf
target_tmux_conf=~/.tmux.conf

source_starship_conf=~/dotfiles/starship/starship.toml
target_starship_conf=~/.config/starship.toml

source_ghostty_conf=~/dotfiles/ghostty/config
target_ghostty_conf=~/.config/ghostty/config

source_zed_conf=~/dotfiles/zed/settings.json
target_zed_conf=~/.config/zed/settings.json

source_zed_keys_conf=~/dotfiles/zed/keymap.json
target_zed_keys_conf=~/.config/zed/keymap.json

create_link() {
    if [ -e "$2" ]; then
        rm "$2"
        echo "Removed existing file: $2"
    fi
    ln -s "$1" "$2"
    echo "Created symlink: $2 -> $1"
}

create_link "$source_zshrc" "$target_zshrc"
create_link "$source_fastfetch_conf" "$target_fastfetch_conf"
create_link "$source_tmux_conf" "$target_tmux_conf"
create_link "$source_starship_conf" "$target_starship_conf"
create_link "$source_ghostty_conf" "$target_ghostty_conf"
create_link "$source_zed_conf" "$target_zed_conf"
create_link "$source_zed_keys_conf" "$target_zed_keys_conf"
