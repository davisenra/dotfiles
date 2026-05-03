# AGENTS.md

NixOS configuration for a Lenovo Yoga laptop, managed with Flakes and Home Manager.

## Structure

- `configuration.nix` - Top-level host config (imports modules/ and home/)
- `flake.nix` - Flake inputs (nixpkgs, home-manager, nix-flatpak) and the `yoga` host definition
- `home/` - Home Manager config for user `davi` (zsh, git, ghostty, tmux, starship, dconf, packages)
- `modules/` - NixOS system modules (boot, networking, desktop, audio, fonts, power, virtualization, flatpak, users, packages)

## Commands

- `nixos-rebuild switch --flake .#yoga` - Apply configuration changes
- `nix flake update` - Update flake inputs

## Conventions

- Single host: `yoga`
- Single user: `davi`
- Uses `nixos-unstable` channel
- Editor: `micro`