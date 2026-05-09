{ ... }:

{
  xdg.configFile."tmux/tmux.conf".text = ''
    set -g prefix C-s
    set -g mouse on
    set -g base-index 1
    set -g status-interval 1
    set -g renumber-windows on
    set -g default-terminal "tmux-256color"
    set -g status-position bottom

    set -g @plugin 'tmux-plugins/tpm'
    set -g @plugin 'fabioluciano/tmux-powerkit'
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

    unbind r
    bind r source-file ~/.config/tmux/tmux.conf

    run '~/.tmux/plugins/tpm/tpm'
  '';
}
