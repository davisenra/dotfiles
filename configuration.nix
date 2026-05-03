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

  nix.optimise.automatic = true;

  system.autoUpgrade = {
    enable = true;
    flake = "/home/davi/dotfiles";
    flags = [
      "--update-input"
      "nixpkgs"
    ];
    dates = "04:00";
  };

  networking.firewall.enable = true;

  services.logind.settings.Login = {
    HandleLidSwitch = "hibernate";
    HandleLidSwitchDocked = "hibernate";
  };

  services.gnome.gnome-keyring.enable = true;
  services.openssh.enable = true;
  services.fwupd.enable = true;

  security.pam.services.login.enableGnomeKeyring = true;

  time.timeZone = "America/Sao_Paulo";

  i18n.defaultLocale = "en_US.UTF-8";

  system.stateVersion = "25.11";
}
