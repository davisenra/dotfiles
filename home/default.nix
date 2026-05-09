{ ... }:

{
  home.username = "davi";
  home.homeDirectory = "/home/davi";

  xdg.enable = true;

  imports = [
    ./fastfetch.nix
    ./ghostty.nix
    ./git.nix
    ./starship.nix
    ./tmux.nix
    ./zsh.nix
  ];

  home.stateVersion = "25.11";

  home.sessionVariables = {
    EDITOR = "micro";
    PNPM_HOME = "$HOME/.local/share/pnpm";
  };

  home.sessionPath = [
    "$HOME/.local/bin"
    "$HOME/.local/share/pnpm"
    "$HOME/.opencode/bin"
  ];
}
