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

  programs.nix-ld = {
    enable = true;
    libraries = with pkgs; [
      stdenv.cc.cc.lib
      zlib
      openssl
      glib
      libGL
      krb5
    ];
  };
}
