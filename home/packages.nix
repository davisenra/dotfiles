{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # CLI
    lazygit
    lazydocker
    k9s
    opencode
    fastfetch
    zsh-fzf-tab
    fzf

    # GUI
    firefox
    google-chrome
    qbittorrent
    vlc
    zed-editor
    vscode

    # Gnome Extensions
    gnomeExtensions.dash-to-dock
    gnomeExtensions.alphabetical-app-grid

    # Gnome Themes/Icons
    papirus-icon-theme

    devenv

    # Compatibility
    steam-run
  ];
}
