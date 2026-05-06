{ ... }:

{
  home-manager.users.davi = {
    imports = [
      ./dconf.nix
      ./fastfetch.nix
      ./git.nix
      ./zsh.nix
      ./starship.nix
      ./ghostty.nix
      ./tmux.nix
      ./packages.nix
    ];

    programs.eza = {
      enable = true;
      enableZshIntegration = true;
      icons = "auto";
    };

    programs.zoxide = {
      enable = true;
      enableZshIntegration = true;
    };

    programs.bat = {
      enable = true;
      config.theme = "GitHub";
    };

    programs.direnv = {
      enable = true;
      enableZshIntegration = true;
      nix-direnv.enable = true;
    };

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
  };
}
