{ pkgs, config, ... }:

{
  programs.zsh = {
    enable = true;
    dotDir = "${config.xdg.configHome}/zsh";

    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      cat = "bat";
      ls = "eza";
      find = "fd";
      dc = "docker compose";
      lg = "lazygit";
      wip = "git add . && git commit -m 'wip'";
      gsm = "git switch main";
      gsd = "git switch develop";
      gp = "git pull";
      gf = "git fetch";
      nrs = "sudo nixos-rebuild switch --flake /home/davi/dotfiles";
    };

    history = {
      size = 5000;
      save = 5000;
      path = "$HOME/.zsh_history";
      ignoreDups = true;
      ignoreSpace = true;
      share = true;
    };

    initContent = ''
      source ${pkgs.zsh-fzf-tab}/share/fzf-tab/fzf-tab.plugin.zsh

      stty -ixon

      setopt appendhistory
      setopt hist_ignore_all_dups
      setopt hist_save_no_dups
      setopt hist_find_no_dups

      zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
      zstyle ':completion:*' list-colors "''${(s.:.)LS_COLORS}"
      zstyle ':completion:*' menu no
    '';
  };
}
