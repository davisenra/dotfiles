{
  home-manager.users.davi = { pkgs, ... }: {
    home.stateVersion = "24.11";

    dconf = {
      enable = true;
      settings = {
        "org/gnome/desktop/interface" = {
          color-scheme = "prefer-dark";
        };
        "org/gnome/desktop/wm/preferences" = {
          button-layout = "appmenu:minimize,maximize,close";
        };
        "org/gnome/shell/extensions/dash-to-dock" = {
          background-opacity = 0.0;
          click-action = "minimize";
          custom-background-color = true;
          dash-max-icon-size = 48;
          disable-overview-on-startup = true;
          dock-position = "BOTTOM";
          height-fraction = 0.9;
          preferred-monitor = -2;
          preferred-monitor-by-connector = "HDMI-1";
          show-apps-always-in-the-edge = false;
          show-mounts = false;
          show-show-apps-button = false;
          show-trash = false;
          transparency-mode = "FIXED";
        };
      };
    };

    home.sessionVariables = {
      EDITOR = "micro";
      PNPM_HOME = "$HOME/.local/share/pnpm";
    };

    home.sessionPath = [
      "$HOME/.local/bin"
      "$HOME/.local/share/pnpm"
      "$HOME/.opencode/bin"
    ];

    programs.zsh = {
      enable = true;

      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;

      shellAliases = {
        ls = "eza -al --color=always --group-directories-first";
        dc = "docker compose";
        lg = "lazygit";
        wip = "git add . && git commit -m 'wip'";
        gsm = "git switch main";
        gsd = "git switch develop";
        gp = "git pull";
        gf = "git fetch";
        rbs = "sudo nixos-rebuild switch --flake /home/davi/dotfiles";
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

        setopt appendhistory
        setopt hist_ignore_all_dups
        setopt hist_save_no_dups
        setopt hist_find_no_dups

        zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
        zstyle ':completion:*' list-colors "''${(s.:.)LS_COLORS}"
        zstyle ':completion:*' menu no
      '';
    };

    programs.starship = {
      enable = true;
      enableZshIntegration = true;
      settings = {
        add_newline = false;
        format = "$username$hostname$directory$git_branch$git_state$git_status$cmd_duration$line_break$character";
        directory.style = "blue";
        character = {
          success_symbol = "[❯](purple)";
          error_symbol = "[❯](red)";
          vimcmd_symbol = "[❮](green)";
        };
        git_branch = {
          format = "[$branch]($style)";
          style = "bright-black";
        };
        git_status = {
          format = "[[(*$conflicted$untracked$modified$staged$renamed$deleted)](218) ($ahead_behind$stashed)]($style)";
          style = "cyan";
          conflicted = "​";
          untracked = "​";
          modified = "​";
          staged = "​";
          renamed = "​";
          deleted = "​";
          stashed = "≡";
        };
        git_state = {
          format = "\\([$state( $progress_current/$progress_total)]($style)\\) ";
          style = "bright-black";
        };
        cmd_duration = {
          format = "[$duration]($style) ";
          style = "yellow";
        };
      };
    };

    programs.ghostty = {
      enable = true;
      settings = {
        window-decoration = "none";
        gtk-titlebar = false;
        window-padding-x = "0,0";
        window-padding-y = "0,0";
        window-width = 120;
        window-height = 35;
        font-family = "JetBrainsMono Nerd Font";
        font-size = 9;
        theme = "Ultra Dark";
        mouse-scroll-multiplier = 0.5;
        background-opacity = 0.9;
      };
    };

    programs.tmux = {
      enable = true;
      shortcut = "s";
      mouse = true;
      baseIndex = 1;
      terminal = "tmux-256color";

      extraConfig = let
        powerkit = pkgs.callPackage (pkgs.fetchFromGitHub {
          owner = "fabioluciano";
          repo = "tmux-powerkit";
          rev = "v5.28.4";
          hash = "sha256-2LU3YUUQURtmk/U24AihV0UK+udrqWQRyhXKO9L1S0o=";
        } + "/default.nix") {
          inherit (pkgs) tmuxPlugins lib;
        };
      in ''
        set -g status-position bottom

        set -g @powerkit_plugins ""
        set -g @powerkit_theme "github"
        set -g @powerkit_theme_variant "dark"
        set -g @powerkit_transparent "true"
        set -g @powerkit_status_interval "2"
        set -g @powerkit_separator_style "none"
        set -g @powerkit_edge_separator_style "none"
        set -g @powerkit_status_position "bottom"
        set -g @powerkit_elements_spacing "false"
        set -g @powerkit_active_window_show_index "false"
        set -g @powerkit_inactive_window_show_index "false"
        set -g @powerkit_session_prefix_color "session-bg"
        set -g @powerkit_active_window_title " #I #W"
        set -g @powerkit_inactive_window_title " #I #W"

        run-shell ${powerkit}/share/tmux-plugins/tmux-powerkit/tmux-powerkit.tmux

        # Reload configuration
        unbind r
        bind r source-file ~/.config/tmux/tmux.conf

        # Window management
        set -g status-interval 1
        set -g renumber-windows on
      '';
    };

    home.packages = with pkgs; [
      # CLI
      lazygit
      lazydocker
      k9s
      opencode
      eza
      starship
      zsh-fzf-tab
      fzf

      # GUI
      firefox
      google-chrome
      spotify
      qbittorrent
      vlc
      zed-editor

      # Gnome Extensions
     	gnomeExtensions.dash-to-dock
    ];
  };
}
