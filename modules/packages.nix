{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    nil
    tree
    wget
    micro
    curl
    nixd
    git
    btop
    tmux
    fastfetch
    ripgrep
    fd
    tokei
    yq
    sqlite
    kubectl
    helm
    uv
    nodejs_25
    pnpm
    go
    php85
    wrangler
    github-cli
  ];
}
