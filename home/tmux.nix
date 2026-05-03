{ pkgs, ... }:

{
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
}