# AGENTS.md

Arch Linux configuration using Home Manager (standalone) for a Lenovo Yoga laptop, managed with Flakes.

## Structure

- `flake.nix` - Flake inputs (nixpkgs, home-manager) and the `davi` home configuration
- `home/` - Home Manager config for user `davi` (zsh, git, ghostty, tmux, starship, fastfetch)
- `home/dot-zshrc` - Raw .zshrc template (sourced by zsh.nix)
- `.nixos/` - Legacy NixOS system modules (archived, not in use)

## Commands

- `home-manager switch --flake .#davi` - Apply configuration changes
- `nix flake update` - Update flake inputs

## Conventions

- Single user: `davi`
- Uses `nixos-unstable` channel
- Editor: `micro`
- Nix manages **config files only** — packages are installed via pacman/AUR

## Required Arch packages

```
sudo pacman -S zsh ghostty tmux git starship fastfetch \
               eza bat fd fzf zoxide ripgrep direnv \
               lazygit lazydocker
```

Plugins/extras:
- `zsh-autosuggestions` `zsh-syntax-highlighting` (pacman)
- `zsh-fzf-tab` (AUR: `yay -S zsh-fzf-tab-git`)
- `tmux-plugin-manager` (AUR) or `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`