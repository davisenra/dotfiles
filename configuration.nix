{ ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./modules
    ./home
  ];

  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;

  nixpkgs.config.allowUnfree = true;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };

  time.timeZone = "America/Sao_Paulo";

  i18n.defaultLocale = "en_US.UTF-8";

  services.openssh.enable = true;

  system.stateVersion = "25.11";
}
