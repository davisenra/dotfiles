{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # CLI
    lazygit
    lazydocker
    k9s
    opencode
    starship
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

    # Compatibility
    steam-run
  ];
}
