{ ... }:

{
  home-manager.users.davi = {
    imports = [
      ./dconf.nix
      ./zsh.nix
      ./starship.nix
      ./ghostty.nix
      ./tmux.nix
      ./packages.nix
    ];

    home.stateVersion = "24.11";

    home.sessionVariables = {
      EDITOR = "micro";
      PNPM_HOME = "$HOME/.local/share/pnpm";
    };

    home.sessionPath = [
      "$HOME/.local/bin"
      "$HOME/.local/share/pnpm"
      "$HOME/.opencode/bin"
    ];
  };
}
