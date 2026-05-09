{ pkgs, ... }:

{
  programs.zsh.enable = true;

  users.users.davi = {
    isNormalUser = true;
    extraGroups = [
      "networkmanager"
      "wheel"
      "docker"
    ];
    shell = pkgs.zsh;
  };
}