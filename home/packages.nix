{ pkgs, ... }:

{
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
    vscode

    # Gnome Extensions
    gnomeExtensions.dash-to-dock
  ];
}
